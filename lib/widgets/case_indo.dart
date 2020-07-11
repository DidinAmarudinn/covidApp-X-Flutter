import 'dart:convert';

import 'package:covid_app/model/indonstats_model.dart';
import 'package:covid_app/screens/indo_stats.dart';
import 'package:covid_app/screens/indonesian_all.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CaseIndo extends StatefulWidget {
  @override
  _CaseIndoState createState() => _CaseIndoState();
}

class _CaseIndoState extends State<CaseIndo> {
  var url="https://covid19.mathdro.id/api/countries/IDN/";
  IndoStatsModel indostats;
  @override
  void initState() {
    super.initState();
    fetcData();
  }
  Future<void> fetcData() async{
   try{
    var res=await http.get(url);
    var decodeJson=jsonDecode(res.body);
    indostats=IndoStatsModel.fromJson(decodeJson);
    print(indostats.confirmed.value);
    setState(() {
      
    });
   }catch(e){
     print(e);
   }
  }
  
  @override
  Widget build(BuildContext context) {
    return indostats==null?Center(child: CircularProgressIndicator()) : Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Indonesian Stats",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>IndonesianDetailPage()));
                },
                child: Text(
                  "View all",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 138, 30, 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.12),
                          offset: Offset(0, 4),
                          blurRadius: 6),
                    ],
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 12),
                        child: Text(
                          "Affected",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 12),
                        child: Text(
                          indostats.confirmed.value.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 39, 44, 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.12),
                          offset: Offset(0, 4),
                          blurRadius: 6),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 12),
                        child: Text(
                          "Deaths",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 12),
                        child: Text(
                          indostats.deaths.value.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: <Widget>[
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(66, 163, 120, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.12),
                      offset: Offset(0, 6),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 12),
                      child: Text(
                        "Recovered",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15, left: 12),
                      child: Text(
                        indostats.recovered.value.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.12),
                      offset: Offset(0, 6),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 12),
                      child: Text(
                        "Active",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15, left: 12),
                      child: Text(
                        indostats.getActive(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
