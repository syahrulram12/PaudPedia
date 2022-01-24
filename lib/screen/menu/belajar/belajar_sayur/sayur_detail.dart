import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_sayur/belajar_sayur.dart';


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
                        Imageurl: 'icon_vegetable/icon_vegetable-03.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-05.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-07.png')),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-09.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-11.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-13.png')),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-17.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-19.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-15.png')),
              ],
            ),
            Row(

              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-21.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-23.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-25.png')),
              ],
            ),
            Row(

              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-29.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-01.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_vegetable/icon_vegetable-27.png')),
              ],
            ),
          ],
        ));
  }
}