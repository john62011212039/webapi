import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:webapi/models/covidfromjson.dart';
import 'package:http/http.dart' as http;

class CovidTrackerService with ChangeNotifier {
  String api = "https://static.easysunday.com/covid-19/getTodayCases.json";

  late CovidTrackerModel home;

  Future<CovidTrackerModel?> getCovidTrackData() async {
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      notifyListeners();
      var res = CovidTrackerModel.fromJson(jsonDecode(response.body));
      home = res;
      return res;
    } else {
      return null;
    }
  }
}
