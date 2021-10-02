import 'package:flutter/material.dart';
import 'package:webapi/services/CovidTrakerModelService.dart';
import 'package:webapi/data_card.dart';
import 'package:webapi/textCard.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CovidTrakerModelService()),
    ], child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {


  @override
  void initstate() {
    Provider.of<CovidTrakerModelService>(context, listen: false)
        .getCovidTravkerData();
    setState(() {});
  }

  Widget build(BuildContext context) {
    var home = Provider.of<CovidTrakerModelService>(context).home1;

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
              'Covid case in Thailad: on the $update',
            ),
            Text(
              'Recover $update : Confirm $confirm : Death : $death',
            ),
          ],
        ),
      ),
    );
  }
}
