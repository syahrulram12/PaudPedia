import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/components/shape.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_hewan/belajar_hewan.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 200,
            height: 25,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Langka',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: 170,
            height: 400,
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
                  color: Colors.pink.shade100,
                  child: HewanItem(
                    Imageurl: 'icon_hewan/icon_hewan_langka/icon_hewan-01.png',
                    audioUrl: 'anoa.mp3',
                  ),
                ),
                Container(
                    color: Colors.pink.shade100,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_langka/icon_hewan-02.png',
                      audioUrl: 'bekantan.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_langka/icon_hewan-03.png',
                      audioUrl: 'beruang-madu.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_langka/icon_hewan-04.png',
                      audioUrl: 'jalak-bali.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_langka/icon_hewan-05.png',
                      audioUrl: 'enggang-gading.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_langka/icon_hewan-06.png',
                      audioUrl: 'maleo-sengkawor.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_langka/icon_hewan-07.png',
                      audioUrl: 'mandar-dengkur.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_langka/icon_hewan-08.png',
                      audioUrl: 'mentilin.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_langka/icon_hewan-09.png',
                      audioUrl: 'pesut-mahakam.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_langka/icon_hewan-10.png',
                      audioUrl: 'rusa-timor.mp3',
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
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 200,
            height: 25,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Hutan',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: 170,
            height: 400,
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
                  color: Colors.yellow.shade200,
                  child: HewanItem(
                    Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-11.png',
                    audioUrl: 'koala.mp3',
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: HewanItem(
                    Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-12.png',
                    audioUrl: 'citah.mp3',
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: HewanItem(
                    Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-13.png',
                    audioUrl: 'tupai.mp3',
                  ),
                ),
                Container(
                    color: Colors.yellow.shade200,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-14.png',
                      audioUrl: 'laba-laba.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-15.png',
                      audioUrl: 'rubah.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-16.png',
                      audioUrl: 'berang-berang.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-17.png',
                      audioUrl: 'monyet.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-18.png',
                      audioUrl: 'katak.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-19.png',
                      audioUrl: 'rakun.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_hutan/icon_hewan-20.png',
                      audioUrl: 'tikus.mp3',
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
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 200,
            height: 25,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Hutan',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: 170,
            height: 400,
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
                    color: Colors.lightBlue.shade400,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_ikan_hias/icon_hewan-21.png',
                      audioUrl: 'ikan-arwana.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_ikan_hias/icon_hewan-22.png',
                      audioUrl: 'ikan-badut.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_ikan_hias/icon_hewan-23.png',
                      audioUrl: 'ikan-gupi.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_ikan_hias/icon_hewan-24.png',
                      audioUrl: 'ikan-disjus.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_ikan_hias/icon_hewan-25.png',
                      audioUrl: 'ikan-cupang.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_ikan_hias/icon_hewan-26.png',
                      audioUrl: 'ikan-koki.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_ikan_hias/icon_hewan-27.png',
                      audioUrl: 'ikan-koi.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: HewanItem(
                      Imageurl:
                          'icon_hewan/icon_hewan_ikan_hias/icon_hewan-28.png',
                      audioUrl: 'ikan-lauhan.mp3',
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 200,
            height: 25,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Hutan',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: 170,
            height: 400,
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
                    color: Colors.lightGreen.shade300,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-29.png',
                      audioUrl: 'kepiting.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade400,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-30.png',
                      audioUrl: 'kuda-laut.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade400,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-31.png',
                      audioUrl: 'lumba-lumba.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade400,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-32.png',
                      audioUrl: 'paus.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade400,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-33.png',
                      audioUrl: 'gurita.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade400,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-34.png',
                      audioUrl: 'udang.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade400,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-35.png',
                      audioUrl: 'penyu.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade400,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-36.png',
                      audioUrl: 'singa-laut.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade400,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-37.png',
                      audioUrl: 'kerang.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade400,
                    child: HewanItem(
                      Imageurl: 'icon_hewan/icon_hewan_laut/icon_hewan-38.png',
                      audioUrl: 'anjing-laut.mp3',
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
