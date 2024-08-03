import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';

class AsteroidsOfTheWeekScreen extends StatefulWidget {
  const AsteroidsOfTheWeekScreen({super.key});

  @override
  State<AsteroidsOfTheWeekScreen> createState() =>
      _AsteroidsOfTheWeekScreenState();
}

class _AsteroidsOfTheWeekScreenState extends State<AsteroidsOfTheWeekScreen> {
//https://api.nasa.gov/neo/rest/v1/feed?start_date=START_DATE&end_date=END_DATE&api_key=API_KEY
  var _response;

  void callAPI() async {
    final today = DateTime.now();
    final weekAgo = today.subtract(const Duration(days: 1));
    var response = await http.get(Uri.parse(
        "https://api.nasa.gov/neo/rest/v1/feed?start_date=${today}&end_date=${weekAgo}&api_key=${dotenv.env['NASA_API_KEY']}"));
    // print(
    //     "https://api.nasa.gov/neo/rest/v1/feed?start_date=${today}&end_date=${weekAgo}&api_key=${dotenv.env['NASA_API_KEY']}");
    if (response.statusCode == 200) {
      if (mounted) {
        setState(() {
          _response = jsonDecode(response.body);
        });
      }
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
      Map<String, dynamic> objects = _response!["near_earth_objects"];
      List<dynamic> neoList = objects.values.expand((x) => x).toList();

      content = ListView.builder(
        itemCount: neoList.length,
        itemBuilder: (ctx, index) {
          var neo = neoList[index];
          return ListTile(
            title: Text(neo['name']),
            subtitle: Text(
              'Diameter: ${(neo['estimated_diameter']['kilometers']['estimated_diameter_min'] as double).toStringAsFixed(2)} - ${(neo['estimated_diameter']['kilometers']['estimated_diameter_max'] as double).toStringAsFixed(2)} km\n'
              'Potentially Hazardous: ${neo['is_potentially_hazardous_asteroid']}',
            ),
          );
        },
      );
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text("Asteroids of the week"),
        ),
        body: content);
  }
}
