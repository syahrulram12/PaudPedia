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
                        Imageurl: 'icon_vegetable/icon_vegetable-03.ng')),
                SizedBox(
                    width: 5
                ),
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
                        Imageurl: 'icon_vegetable/icon_vegetable-14.png')),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_shape/icon_parallelogram.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_shape/icon_rhombus.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_shape/icon_trapezoid.png')),
              ],
            ),
            Row(

              children: [
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_shape/icon_love.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_shape/icon_star.png')),
                Flexible(
                    child: SayurItem(
                        Imageurl: 'icon_shape/icon_arrow.png')),
              ],
            ),
          ],
        ));
  }
}