import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotlineModel{
  String nama;
  String nomer;
  IconData icon;

  HotlineModel({
    this.nama,
    this.nomer,
    this.icon
  });
}

List<HotlineModel> listHotline=[
  HotlineModel(
    nama: "Indonesia",
    nomer: "119",
    icon: Icons.phone 
  ),
  HotlineModel(
    nama: "Kab Bandung",
    nomer: "0821 1821 9287",
    icon: Icons.phone 
  ),
  HotlineModel(
    nama: "Kab Ciamis",
    nomer: "119",
    icon: Icons.phone 
  ),
  HotlineModel(
    nama: "Kab Subang",
    nomer: "0813-2291-6001",
    icon: Icons.phone 
  ),
  HotlineModel(
    nama: "Kab Sumedang",
    nomer: "119",
    icon: Icons.phone 
  ),
  
];