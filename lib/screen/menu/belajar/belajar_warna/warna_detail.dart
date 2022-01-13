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
    return Container(
        child: Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: WarnaItem(Imageurl: 'assets/icons/tab_bar_merah.png')),
            ],
          ),
        )
      ],
    ));
    Container(
      child: ClipRRect(
        child: GestureDetector(
            child: Image.asset(
          'assets/icons/tab_bar_kiri.png',
          width: 125,
        )),
      ),
    );
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: WarnaItem(Imageurl: 'icon_cake/icon_cake-01.png')),
      ],
    );
    Container(
      child: ClipRRect(
        child: GestureDetector(
            child: Image.asset(
          'assets/icons/tab_bar_kanan.png',
          width: 125,
        )),
      ),
    );
  }
}
