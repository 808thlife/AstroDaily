import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:gal/gal.dart';
import 'package:space_app/widgets/youtube_player.dart';

class PhotoOfTheDayScreen extends StatefulWidget {
  const PhotoOfTheDayScreen({super.key});

  @override
  State<PhotoOfTheDayScreen> createState() => _PhotoOfTheDayScreenState();
}

class _PhotoOfTheDayScreenState extends State<PhotoOfTheDayScreen> {
  var _response;
  bool isDownloadingImage = false;
  String scaffoldTitle = "";

  void callAPI() async {
    var response = await http.get(Uri.parse(
        "https://api.nasa.gov/planetary/apod?api_key=${dotenv.env['NASA_API_KEY']}"));
    print(
        "https://api.nasa.gov/planetary/apod?api_key=${dotenv.env['NASA_API_KEY']}");
    if (response.statusCode == 200) {
      setState(() {
        _response = jsonDecode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    callAPI();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: CircularProgressIndicator());
    if (_response != null) {
      //should check if media type is actually a youtube video.

      scaffoldTitle = _response["title"].toString();
      content = SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (_response["media_type"] != "video")
                  ? Image.network("${_response["hdurl"]}")
                  : YoutubePlayerWidget(url: _response["url"]),
              const SizedBox(
                height: 15,
              ),
              Text(
                _response["copyright"] == null
                    ? "${_response["date"]}"
                    : "Was taken on ${_response["date"]} by ${_response["copyright"]}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Explanation: ",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${_response["explanation"]}",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(scaffoldTitle),
        actions: [
          (_response != null && _response["media_type"] == "image")
              ? (!isDownloadingImage
                  ? IconButton(
                      icon: const Icon(Icons.download),
                      onPressed: () async {
                        final scaffoldMessenger = ScaffoldMessenger.of(context);
                        // Check for access permission
                        bool hasAccess = await Gal.hasAccess();

                        // Request access permission
                        if (!hasAccess) {
                          await Gal.requestAccess();
                        }
                        setState(() {
                          isDownloadingImage = true;
                        });

                        final imagePath =
                            '${Directory.systemTemp.path}/someimage.jpg';
                        await Dio()
                            .download('${_response["hdurl"]}', imagePath);

                        await Gal.putImage(imagePath);
                        setState(() {
                          isDownloadingImage = false;
                        });
                        scaffoldMessenger.showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Image downloaded and saved successfully',
                            ),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      },
                    )
                  : const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: CircularProgressIndicator(),
                      ),
                    ))
              : const SizedBox.shrink(),
        ],
      ),
      body: content,
    );
  }
}
