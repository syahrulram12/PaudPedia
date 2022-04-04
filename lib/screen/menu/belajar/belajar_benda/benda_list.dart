import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/components/shape.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_benda/belajar_benda.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 300,
            height: 25,
            color: Colors.yellow.shade800,
            child: Center(
              child: Text(
                'Kamar Tidur',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: width / 1.5,
            height: height / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 20),
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              children: <Widget>[
                Container(
                    color: Colors.lightBlue.shade700,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bedroom/icon_object_bedroom-10.png',
                      audioUrl: 'teropong-bintang.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bedroom/icon_object_bedroom-02.png',
                      audioUrl: 'lampu-belajar.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bedroom/icon_object_bedroom-03.png',
                      audioUrl: 'bantal.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bedroom/icon_object_bedroom-04.png',
                      audioUrl: 'kasur.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bedroom/icon_object_bedroom-05.png',
                      audioUrl: 'kursi.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bedroom/icon_object_bedroom-06.png',
                      audioUrl: 'mobil-mobilan.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bedroom/icon_object_bedroom-07.png',
                      audioUrl: 'lemari.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bedroom/icon_object_bedroom-08.png',
                      audioUrl: 'bola.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bedroom/icon_object_bedroom-09.png',
                      audioUrl: 'keranjang-bola.mp3',
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 300,
            height: 25,
            color: Colors.yellow.shade800,
            child: Center(
              child: Text(
                'Kamar Mandi',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: width / 1.5,
            height: height / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 20),
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              children: <Widget>[
                Container(
                    color: Colors.yellow.shade800,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bathroom/icon_object_bathroom-01.png',
                      audioUrl: 'pancuran-air.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade800,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bathroom/icon_object_bathroom-02.png',
                      audioUrl: 'sikat-gigi.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade800,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bathroom/icon_object_bathroom-03.png',
                      audioUrl: 'handuk-kecil.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade800,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bathroom/icon_object_bathroom-04.png',
                      audioUrl: 'tisu-toilet.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade800,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bathroom/icon_object_bathroom-05.png',
                      audioUrl: 'ember.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade800,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bathroom/icon_object_bathroom-06.png',
                      audioUrl: 'sabun.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade800,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bathroom/icon_object_bathroom-07.png',
                      audioUrl: 'sikat-lantai.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade800,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bathroom/icon_object_bathroom-08.png',
                      audioUrl: 'sampo.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade800,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/bathroom/icon_object_bathroom-09.png',
                      audioUrl: 'cermin.mp3',
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 300,
            height: 25,
            color: Colors.yellow.shade800,
            child: Center(
              child: Text(
                'Dapur',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
             width: width / 1.5,
            height: height / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 20),
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              children: <Widget>[
                Container(
                    color: Colors.pink.shade400,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/kitchen/icon_object_kitchen-01.png',
                      audioUrl: 'mangkok.mp3',
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/kitchen/icon_object_kitchen-02.png',
                      audioUrl: 'gelas.mp3',
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/kitchen/icon_object_kitchen-03.png',
                      audioUrl: 'sodet.mp3',
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/kitchen/icon_object_kitchen-04.png',
                      audioUrl: 'pisau.mp3',
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/kitchen/icon_object_kitchen-05.png',
                      audioUrl: 'wajan.mp3',
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/kitchen/icon_object_kitchen-06.png',
                      audioUrl: 'panci.mp3',
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/kitchen/icon_object_kitchen-07.png',
                      audioUrl: 'talenan.mp3',
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/kitchen/icon_object_kitchen-08.png',
                      audioUrl: 'teko.mp3',
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: BendaItem(
                      Imageurl:
                          'icon_object/kitchen/icon_object_kitchen-10.png',
                      audioUrl: 'sapu.mp3',
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
