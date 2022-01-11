import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_angka/belajar_angka.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            children: [
        Row(
        children: [
        Flexible(
            child: AngkaItem(
                Imageurl: 'icon_number/icon_1-10/icon_1-10-01.png')),
        Flexible(
            child: AngkaItem(
                Imageurl:  'icon_number/icon_1-10/icon_1-10-02.png')),
         Flexible(
             child: AngkaItem(
                 Imageurl:  'icon_number/icon_1-10/icon_1-10-03.png')),
            ],
    ),
        Row(
        children: [
        Flexible(
            child: AngkaItem(
                Imageurl: 'icon_number/icon_1-10/icon_1-10-04.png')),
        Flexible(
            child: AngkaItem(
                Imageurl:  'icon_number/icon_1-10/icon_1-10-05.png')),
        Flexible(
            child: AngkaItem(
                Imageurl:  'icon_number/icon_1-10/icon_1-10-06.png')),
    ],
    ),
              Row(
                children: [
                  Flexible(
                      child: AngkaItem(
                          Imageurl: 'icon_number/icon_1-10/icon_1-10-07.png')),
                  Flexible(
                      child: AngkaItem(
                          Imageurl:  'icon_number/icon_1-10/icon_1-10-08.png')),
                  Flexible(
                      child: AngkaItem(
                          Imageurl:  'icon_number/icon_1-10/icon_1-10-09.png')),
                ],
              ),
              Row(
                children: [
                  Flexible(
                      child: AngkaItem(
                          Imageurl: 'icon_number/icon_1-10/icon_1-10-010.png')),

                ],
              ),
            ],
        ));
  }
}