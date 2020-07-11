import 'package:covid_app/model/sympotis_model.dart';

class SympotisData {
  List<SympotisModel> listSympotoms = [
    SympotisModel(
        name: "High Fever",
        imgUrl: "images/fever.png",
        deskripsi:
            "Fever is an elevation in body temperature or a high body temperature"),
    SympotisModel(
        name: "Dry Cought",
        imgUrl: "images/cought.png",
        deskripsi: "A dry cough is a cough that doesn't bring up mucus"),
    SympotisModel(
        name: "Headache",
        imgUrl: "images/headchace.png",
        deskripsi:
            "Headache is defined as a pain arising from the head or upper neck of the body"),
    SympotisModel(
        name: "Sortness of Breath",
        imgUrl: "images/shortnes.png",
        deskripsi:
            "Shortness of breath can make it hard to breathe. It can leave you gasping for air")
  ];
}
