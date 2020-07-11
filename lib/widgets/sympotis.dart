import 'package:covid_app/data/sympotis_data.dart';
import 'package:covid_app/model/sympotis_model.dart';
import 'package:flutter/material.dart';

class Sympotis extends StatefulWidget {
  @override
  _SympotisState createState() => _SympotisState();
}

SympotisData sypotoms = SympotisData();

class _SympotisState extends State<Sympotis> {
  static const List<Scaffold> _pageOption=[

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Symptoms",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "View all",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sypotoms.listSympotoms.length,
              itemBuilder: (BuildContext context, int index) {
                SympotisModel sympotisModel = sypotoms.listSympotoms[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.12),
                            offset: Offset(0, 1),
                            blurRadius: 6,
                          )
                        ]),
                    width: 250,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Color(0xffF4f4f4),
                            ),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image(
                                  height: 60,
                                  width: 50,
                                  image: AssetImage(sympotisModel.imgUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                sympotisModel.name,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                sympotisModel.deskripsi,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
