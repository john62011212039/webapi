import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:webapi/models/covidfromjson.dart';
import 'package:http/http.dart' as http;

class CovidTrakerModelService with ChangeNotifier {
  String api = "https://static.easysunday.com/covid-19/getTodayCases.json";

  late CovidTravkerModel home1;

  Future<CovidTravkerModel?> getCovidTravkerData() async {
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      notifyListeners();
      var res = CovidTravkerModel.fromJson(jsonDecode(response.body));
      home1 = res;
      print("200");
      return res;
    } else {
      print("200");
      return null;
    }
  }
}
