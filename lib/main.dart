import 'package:flutter/material.dart';
import 'package:webapi/services/CovidTrakerModelService.dart';
import 'package:webapi/data_card.dart';
import 'package:webapi/textCard.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CovidTrackerService()),
    ], child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Get Data from Json Service'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String report;

  @override
  void initState() {
    Provider.of<CovidTrackerService>(context, listen: false)
        .getCovidTrackData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var home = Provider.of<CovidTrackerService>(context).home;
    int death = home.deaths;
    int recover = home.recovered;
    int confirm = home.confirmed;
    String update = home.updateDate;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Covid case in Thailand on the $update',
            ),
            Text(
              'Recover $recover: Confirm $confirm: Death : $death',
            ),
          ],
        ),
      ),
      //
    );
  }
}
