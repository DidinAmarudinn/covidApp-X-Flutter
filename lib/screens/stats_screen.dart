import 'package:covid_app/screens/indo_stats.dart';
import 'package:covid_app/screens/world_stats.dart';
import 'package:flutter/material.dart';

class StatsScreens extends StatefulWidget {
  @override
  _StatsScreensState createState() => _StatsScreensState();
}

class _StatsScreensState extends State<StatsScreens> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF3F5F7),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 65),
              child: Text(
                "CoronaStats",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Color(0xFFF3F5F7)),
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("IDN"),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 15,
                        child: Image(image: AssetImage("images/idn_flag.png")),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("WORLD"),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 15,
                        child:
                            Image(image: AssetImage("images/world_flag.png")),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [IndoStats(), WorldStats()]),
      ),
    );
  }
}
