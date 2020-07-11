import 'package:covid_app/widgets/banner.dart';
import 'package:covid_app/widgets/sympotis.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _selectedIndex = 0;
  List<String> _image = [
    "images/facemask.png",
    "images/tisue.png",
    "images/antis.png",
    "images/vitamin.png",
  ];
  Widget _buildContainer(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.12),
                offset: Offset(0, 3),
                blurRadius: 6),
          ],
        ),
        child: Center(
          child: Image(
            width: 50,
            height: 59,
            image: AssetImage(_image[index]),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F7),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 30, bottom: 10),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Hi, Stronger",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text\n of the printing and typesetting",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1.2, letterSpacing: 1, color: Colors.black87),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.12),
                      offset: Offset(0.2, 6),
                      blurRadius: 6),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 18, right: 6),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here....",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      suffixIcon: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 4, 102, 200),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Sympotis(),
            BannerHome(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Requirements",
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _image
                    .asMap()
                    .entries
                    .map((MapEntry mapEntry) => _buildContainer(mapEntry.key))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}


