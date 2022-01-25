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
        margin: EdgeInsets.symmetric(horizontal: 8 / 2, vertical: 25),
        height: 8 / 2,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 6,
                child: ClipRRect(
                  child: GestureDetector(
                      onTap: () => {Get.back()},
                      child: Image.asset('assets/icons/tab_bar_kanan.png',
                          fit: BoxFit.contain)),
                ),
              ),
              Flexible(
                  child: WarnaItem(
                Imageurl: 'icon_cake/icon_cake-01-merah.png',
                audioUrl: 'merah.mp3',
              )),
              Flexible(
                child: Container(
                  width: 5,
                  child: ClipRRect(
                    child: GestureDetector(
                        child: Image.asset(
                      'assets/icons/tab_bar_kiri.png',
                      width: 125,
                    )),
                  ),
                ),
              )
            ]),
      )
    ]));
  }
}
