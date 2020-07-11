import 'package:covid_app/widgets/case_indo.dart';
import 'package:covid_app/widgets/hotlines.dart';
import 'package:flutter/material.dart';

class IndoStats extends StatefulWidget {
  @override
  _IndoStatsState createState() => _IndoStatsState();
}

class _IndoStatsState extends State<IndoStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F7),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          CaseIndo(),
          SizedBox(height: 15,),
          Hotlines()
        ],
      ),
    );
  }
}
