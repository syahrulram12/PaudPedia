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
                        Imageurl: 'icon_shape/icon_box.png')),
                SizedBox(
                    width: 5
                ),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_rectangle.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_circle.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_oval.png')),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/triangle.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_pentagon.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_hexagon.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_octagonal.png')),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_parallelogram.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_rhombus.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_trapezoid.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_moon.png')),
              ],
            ),
            Row(

              children: [
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_love.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_star.png')),
                Flexible(
                    child: BuahItem(
                        Imageurl: 'icon_shape/icon_arrow.png')),
              ],
            ),
          ],
        ));
  }
}