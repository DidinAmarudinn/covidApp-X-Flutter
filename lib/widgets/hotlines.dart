import 'package:covid_app/model/hotlinde_model.dart';
import 'package:flutter/material.dart';

class Hotlines extends StatefulWidget {
  @override
  _HotlinesState createState() => _HotlinesState();
}

class _HotlinesState extends State<Hotlines> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hotline",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: listHotline.length,
              itemBuilder: (BuildContext context, int index) {
                HotlineModel hotlineModel = listHotline[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                hotlineModel.nama,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                hotlineModel.nomer,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(.12),
                              offset: Offset(0, 6),
                              blurRadius: 6
                            )],
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.green
                          ),
                          child: Center(
                            child: Icon(
                              hotlineModel.icon, color: Colors.white,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
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
