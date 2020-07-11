import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class IndonesianDetailPage extends StatefulWidget {
  @override
  _IndonesianDetailPageState createState() => _IndonesianDetailPageState();
}

class _IndonesianDetailPageState extends State<IndonesianDetailPage> {
  var url = "https://indonesia-covid-19.mathdro.id/api/provinsi";
  List data;

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  Future<String> getData() async {
    var response = await http.get(url);
    var decodeJson = jsonDecode(response.body)['data'];
    data = decodeJson;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3F5F7),
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.black)),
        title: Text(
          "Province Stats",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: data == null
          ? CircularProgressIndicator()
          : Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Province",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Affected",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 138, 30, 1),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Deaths",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(254, 39, 44, 1),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Recover",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(66, 163, 120, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: ListView.builder(
                    itemCount: 33,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Text(
                                  data[index]['provinsi'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                )),
                            Expanded(
                              flex: 1,
                              child: Text(
                                data[index]['kasusPosi'].toString(),
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 138, 30, 1),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                data[index]['kasusMeni'].toString(),
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Color.fromRGBO(254, 39, 44, 1),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                data[index]['kasusSemb'].toString(),
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Color.fromRGBO(66, 163, 120, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
