import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_benda/belajar_benda.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Center(
                  child: Text(
                    'Kamar Tidur',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              )),
        ),
        Row(
          children: [
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-01.png',
              audioUrl: '11.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-02.png',
              audioUrl: 'lampu-belajar.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-03.png',
              audioUrl: 'bantal.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-04.png',
              audioUrl: 'kasur.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-05.png',
              audioUrl: 'kursi.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-06.png',
              audioUrl: 'mobil-mobilan.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-07.png',
              audioUrl: 'lemari.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-08.png',
              audioUrl: 'bola.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-09.png',
              audioUrl: 'keranjang-bola.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bedroom/icon_object_bedroom-10.png',
              audioUrl: 'teropong-bintang.mp3',
            )),
            Flexible(child: Container())
          ],
        ),
      ],
    ));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Center(
                  child: Text(
                    'Kamar Mandi',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              )),
        ),
        Row(
          children: [
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-01.png',
              audioUrl: 'pancuran-air.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-02.png',
              audioUrl: 'sikat-gigi.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-03.png',
              audioUrl: 'handuk-kecil.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-04.png',
              audioUrl: 'tisu-toilet.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-05.png',
              audioUrl: 'ember.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-06.png',
              audioUrl: 'sabun.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-07.png',
              audioUrl: 'sikat-lantai.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-08.png',
              audioUrl: 'sampo.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-09.png',
              audioUrl: 'cermin.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/bathroom/icon_object_bathroom-10.png',
              audioUrl: 'laci.mp3',
            )),
            Flexible(child: Container())
          ],
        ),
      ],
    ));
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Center(
                  child: Text(
                    'Dapur',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              )),
        ),
        Row(
          children: [
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-01.png',
              audioUrl: 'mangkok.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-02.png',
              audioUrl: 'gelas.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-03.png',
              audioUrl: 'sodet.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-04.png',
              audioUrl: 'pisau.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-05.png',
              audioUrl: 'wajan.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-06.png',
              audioUrl: 'panci.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-07.png',
              audioUrl: 'talenan.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-08.png',
              audioUrl: 'teko.mp3',
            )),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-09.png',
              audioUrl: '.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
                child: BendaItem(
              Imageurl: 'icon_object/kitchen/icon_object_kitchen-10.png',
              audioUrl: 'sapu.mp3',
            )),
            Flexible(child: Container())
          ],
        ),
      ],
    ));
  }
}
