import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PhotoOfTheDayScreen extends StatefulWidget {
  const PhotoOfTheDayScreen({super.key});

  @override
  State<PhotoOfTheDayScreen> createState() => _PhotoOfTheDayScreenState();
}

class _PhotoOfTheDayScreenState extends State<PhotoOfTheDayScreen> {
  var _response;
  String scaffoldTitle = "";

  void callAPI() async {
    var response = await http.get(Uri.parse(
        "https://api.nasa.gov/planetary/apod?api_key=${dotenv.env['NASA_API_KEY']}"));

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
      scaffoldTitle = _response["title"].toString();
      content = SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network("${_response["hdurl"]}"),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Was taken on ${_response["date"]} by ${_response["copyright"]}",
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
      ),
      body: content,
    );
  }
}
