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
                        Imageurl: 'icon_fruit/icon_fruit_07.png', audioUrl: 'ceri.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_18.png', audioUrl: 'anggur.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_31.png', audioUrl: 'blueberry.mp3',)),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_04.png', audioUrl: 'kiwi.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_23.png', audioUrl: 'mangga.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_20.png', audioUrl: 'strauberry.mp3',)),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_15.png', audioUrl: 'pir.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_34.png', audioUrl: 'jeruk.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_28.png', audioUrl: 'pepaya.mp3',)),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_10.png', audioUrl: 'lemon.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_26.png', audioUrl: 'apel.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_40.png', audioUrl: 'manggis.mp3',)),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_12.png', audioUrl: 'semangka.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_37.png', audioUrl: 'pisang.mp3',)),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_fruit/icon_fruit_01.png', audioUrl: 'nanas.mp3',)),
              ],
            ),
          ],
        ));
  }
}