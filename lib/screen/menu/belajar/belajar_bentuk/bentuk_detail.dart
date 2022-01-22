import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_bentuk/belajar_bentuk.dart';

class Bentuk extends StatelessWidget {
  const Bentuk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_box.png',
              audioUrl: 'bujur-sangkar.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_rectangle.png',
              audioUrl: 'persegi-panjang.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_circle.png',
              audioUrl: 'lingkaran.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_oval.png',
              audioUrl: 'oval.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/triangle.png',
              audioUrl: 'segi-tiga.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_pentagon.png',
              audioUrl: 'segi-lima.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_hexagon.png',
              audioUrl: 'segi-enam.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_octagonal.png',
              audioUrl: 'segi-delapan.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_parallelogram.png',
              audioUrl: 'jajar-genjang.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_rhombus.png',
              audioUrl: 'belah-ketupat.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_trapezoid.png',
              audioUrl: 'trapesium.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_moon.png',
              audioUrl: 'bulan.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_love.png',
              audioUrl: 'hati.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_star.png',
              audioUrl: 'bintang.mp3',
            )),
            Flexible(
                child: BentukItem(
              Imageurl: 'icon_shape/icon_arrow.png',
              audioUrl: 'panah.mp3',
            )),
          ],
        ),
      ],
    ));
  }
}
