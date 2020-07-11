import 'package:covid_app/screens/bottomnav_screens.dart';
import 'package:covid_app/screens/home_screens.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,4,102,200),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Align(
                alignment: Alignment.center,
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.7,
                  image: AssetImage("images/splash.png"),
                ),
              ),
            ),
            Text(
              "COVID-19",
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 1.2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "A coronavirus is a type of common virus that can infect your nose, sinuses, or upper throat. They can spread much like cold viruses. Almost everyone gets a coronavirus infection at least once in their life, most likely as a young child.",
                style: TextStyle(color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 120, 20, 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 4.0),
              ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    margin:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 4,102,200),
                        borderRadius: BorderRadius.circular(4)),
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BottomNavScreen(),
                          ),
                        );
                      },
                      child: Material(
                        color: Colors.transparent,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
