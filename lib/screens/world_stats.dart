import 'package:covid_app/widgets/case_world.dart';
import 'package:covid_app/widgets/more_info.dart';
import 'package:flutter/material.dart';

class WorldStats extends StatefulWidget {
  @override
  _WorldStatsState createState() => _WorldStatsState();
}

class _WorldStatsState extends State<WorldStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F7),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          CaseWorld(),
          SizedBox(height: 20,),
          MoreInfo()
        ],
      ),
    );
  }
}