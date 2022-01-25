import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_warna/belajar_warna.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(
            children: [
              Flexible(
                child: Container(
                  child: WarnaItem(
                Imageurl: 'icon_cake/icon_cake-01-merah.png', width: 100, audioUrl: 'merah.mp3', height: 100,
              ))),
            ]),
      )
    ]));
  }
}
