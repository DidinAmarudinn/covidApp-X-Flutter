import 'package:flutter/material.dart';

class IndonesianDetailPage extends StatefulWidget {
  @override
  _IndonesianDetailPageState createState() => _IndonesianDetailPageState();
}

class _IndonesianDetailPageState extends State<IndonesianDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Province Stats"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(itemBuilder: null),
      ),
    );
  }
}