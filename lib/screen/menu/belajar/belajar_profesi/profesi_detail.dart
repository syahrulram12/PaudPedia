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
    return Container(
        child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                      child: ProfesiItem(
                          Imageurl: 'icon_profesi/pilih_profesi.png')),
                ],
              ),
              Row(
        children: [
        Flexible(
        child: ProfesiItem(
            Imageurl: 'icon_profesi/icon_teacher.png')),
        Flexible(
        child: ProfesiItem(
            Imageurl: 'icon_profesi/icon_doctor.png')),

    ],
    ),
            ],
        ));
  }
}