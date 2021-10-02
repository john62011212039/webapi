// To parse this JSON data, do
//
//     final covidTravkerModel = covidTravkerModelFromJson(jsonString);

import 'dart:convert';

CovidTravkerModel covidTravkerModelFromJson(String str) => CovidTravkerModel.fromJson(json.decode(str));

String covidTravkerModelToJson(CovidTravkerModel data) => json.encode(data.toJson());

class CovidTravkerModel {
  CovidTravkerModel({
    required this.updated,
    required this.country,
    required this.cases,
    required this.todayCases,
    required this.covidTravkerModelDeaths,
    required this.todayDeaths,
    required this.covidTravkerModelRecovered,
    required this.todayRecovered,
    required this.active,
    required this.critical,
    required this.casesPerOneMillion,
    required this.deathsPerOneMillion,
    required this.tests,
    required this.testsPerOneMillion,
    required this.population,
    required this.continent,
    required this.oneCasePerPeople,
    required this.oneDeathPerPeople,
    required this.oneTestPerPeople,
    required this.activePerOneMillion,
    required this.recoveredPerOneMillion,
    required this.criticalPerOneMillion,
    required this.confirmed,
    required this.recovered,
    required this.hospitalized,
    required this.deaths,
    required this.newConfirmed,
    required this.newRecovered,
    required this.newHospitalized,
    required this.newDeaths,
    required this.updateDate,
    required this.devBy,
  });

  int updated;
  String country;
  int cases;
  int todayCases;
  int covidTravkerModelDeaths;
  int todayDeaths;
  int covidTravkerModelRecovered;
  int todayRecovered;
  int active;
  int critical;
  int casesPerOneMillion;
  int deathsPerOneMillion;
  int tests;
  int testsPerOneMillion;
  int population;
  String continent;
  int oneCasePerPeople;
  int oneDeathPerPeople;
  int oneTestPerPeople;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;
  int confirmed;
  int recovered;
  int hospitalized;
  int deaths;
  int newConfirmed;
  int newRecovered;
  int newHospitalized;
  int newDeaths;
  String updateDate;
  String devBy;

  factory CovidTravkerModel.fromJson(Map<String, dynamic> json) => CovidTravkerModel(
    updated: json["updated"],
    country: json["country"],
    cases: json["cases"],
    todayCases: json["todayCases"],
    covidTravkerModelDeaths: json["deaths"],
    todayDeaths: json["todayDeaths"],
    covidTravkerModelRecovered: json["recovered"],
    todayRecovered: json["todayRecovered"],
    active: json["active"],
    critical: json["critical"],
    casesPerOneMillion: json["casesPerOneMillion"],
    deathsPerOneMillion: json["deathsPerOneMillion"],
    tests: json["tests"],
    testsPerOneMillion: json["testsPerOneMillion"],
    population: json["population"],
    continent: json["continent"],
    oneCasePerPeople: json["oneCasePerPeople"],
    oneDeathPerPeople: json["oneDeathPerPeople"],
    oneTestPerPeople: json["oneTestPerPeople"],
    activePerOneMillion: json["activePerOneMillion"].toDouble(),
    recoveredPerOneMillion: json["recoveredPerOneMillion"].toDouble(),
    criticalPerOneMillion: json["criticalPerOneMillion"].toDouble(),
    confirmed: json["Confirmed"],
    recovered: json["Recovered"],
    hospitalized: json["Hospitalized"],
    deaths: json["Deaths"],
    newConfirmed: json["NewConfirmed"],
    newRecovered: json["NewRecovered"],
    newHospitalized: json["NewHospitalized"],
    newDeaths: json["NewDeaths"],
    updateDate: json["UpdateDate"],
    devBy: json["DevBy"],
  );

  Map<String, dynamic> toJson() => {
    "updated": updated,
    "country": country,
    "cases": cases,
    "todayCases": todayCases,
    "deaths": covidTravkerModelDeaths,
    "todayDeaths": todayDeaths,
    "recovered": covidTravkerModelRecovered,
    "todayRecovered": todayRecovered,
    "active": active,
    "critical": critical,
    "casesPerOneMillion": casesPerOneMillion,
    "deathsPerOneMillion": deathsPerOneMillion,
    "tests": tests,
    "testsPerOneMillion": testsPerOneMillion,
    "population": population,
    "continent": continent,
    "oneCasePerPeople": oneCasePerPeople,
    "oneDeathPerPeople": oneDeathPerPeople,
    "oneTestPerPeople": oneTestPerPeople,
    "activePerOneMillion": activePerOneMillion,
    "recoveredPerOneMillion": recoveredPerOneMillion,
    "criticalPerOneMillion": criticalPerOneMillion,
    "Confirmed": confirmed,
    "Recovered": recovered,
    "Hospitalized": hospitalized,
    "Deaths": deaths,
    "NewConfirmed": newConfirmed,
    "NewRecovered": newRecovered,
    "NewHospitalized": newHospitalized,
    "NewDeaths": newDeaths,
    "UpdateDate": updateDate,
    "DevBy": devBy,
  };
}
