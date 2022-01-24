import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_sayur/belajar_sayur.dart';
String imageLink = 'myImage.png';


class Sayur extends StatelessWidget {
  const Sayur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-03.png' , audioUrl: 'tomat.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-05.png', audioUrl: 'bawang-merah.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-07.png', audioUrl: 'daun-bawang.mp3',)),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-09.png', audioUrl: 'brokoli.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-11.png', audioUrl: 'cabai.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-13.png', audioUrl: 'jagung.mp3',)),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-17.png', audioUrl: 'jamur.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-19.png', audioUrl: 'kentang.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-15.png', audioUrl: 'kacang-tanah.mp3',)),
              ],
            ),
            Row(

              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-21.png', audioUrl: 'kubis.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-23.png', audioUrl: 'labu.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-25.png', audioUrl: 'lobak.mp3',)),
              ],
            ),
            Row(

              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-29.png', audioUrl: 'terong.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-01.png', audioUrl: 'paprika.mp3',)),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-27.png', audioUrl: 'wortel.mp3',)),
              ],
            ),
          ],
        ));
  }
}