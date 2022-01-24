import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_buah/belajar_buah.dart';


class Buah extends StatelessWidget {
  const Buah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_07.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_18.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_31.png')),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_04.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_23.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_20.png')),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_15.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_34.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_28.png')),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_10.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_26.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_40.png')),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_12.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_37.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_0102.png')),
              ],
            ),
          ],
        ));
  }
}