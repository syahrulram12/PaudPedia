import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_profesi/belajar_profesi.dart';

class Profesi1 extends StatelessWidget {
  const Profesi1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
                child: ProfesiItem(
              Imageurl: 'icon_profesi/pilih_profesi.png',
              audioUrl: 'belajar-mengenal-profesi.mp3',
            )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
                child: ProfesiItem(
              Imageurl: 'icon_profesi/icon_teacher.png',
              audioUrl: 'guru.mp3',
            )),
            Flexible(
                child: ProfesiItem(
              Imageurl: 'icon_profesi/icon_fire.png',
              audioUrl: 'pemadam-kebakaran.mp3',
            )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
                child: ProfesiItem(
              Imageurl: 'icon_profesi/icon_doctor.png',
              audioUrl: 'dokter.mp3',
            )),
            Flexible(
                child: ProfesiItem(
              Imageurl: 'icon_profesi/icon_police.png',
              audioUrl: 'polisi.mp3',
            )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
                child: ProfesiItem(
              Imageurl: 'icon_profesi/icon_waiter.png',
              audioUrl: 'pelayan.mp3',
            )),
            Flexible(child: Container()),
          ],
        ),
      ],
    ));
  }
}
