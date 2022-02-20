import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/components/shape.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_tanaman/belajar_tanaman.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 300,
            height: 25,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Tanaman Bunga',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: 200,
            height: 450,
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
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-anggrek.png',
                      audioUrl: 'bunga-anggrek.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-aster.png',
                      audioUrl: 'bunga-aster.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-bangkai.png',
                      audioUrl: 'bunga-bangkai.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-kamboja.png',
                      audioUrl: 'bunga-kamboja.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-lili.png',
                      audioUrl: 'bunga-lili.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-matahari.png',
                      audioUrl: 'bunga-matahari.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-mawar.png',
                      audioUrl: 'bunga-mawar.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-melati.png',
                      audioUrl: 'bunga-melati.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-sakura.png',
                      audioUrl: 'bunga-sakura.mp3',
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-tulip.png',
                      audioUrl: 'bunga-tulip.mp3',
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
            width: 300,
            height: 25,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Tanaman Hias',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: 200,
            height: 450,
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
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-apuapu.png',
                      audioUrl: 'apu-apu.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-bambuair.png',
                      audioUrl: 'bambu-air.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-cactus.png',
                      audioUrl: 'kaktus.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-cemara.png',
                      audioUrl: 'cemara.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-keladi.png',
                      audioUrl: 'keladi.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-kolbanda.png',
                      audioUrl: 'kolpanda.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-pakis_haji.png',
                      audioUrl: 'pakis-haji.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-palemerah.png',
                      audioUrl: 'palem-merah.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-puring.png',
                      audioUrl: 'puring.mp3',
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_hias/icon_tanaman_-sansivera.png',
                      audioUrl: 'sansivera.mp3',
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
            width: 300,
            height: 25,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Tanaman Obat',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: 200,
            height: 450,
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
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_alang_alang.png',
                      audioUrl: 'alang-alang.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_jahe.png',
                      audioUrl: 'jahe.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_kerepeng_cina.png',
                      audioUrl: 'kerepeng-cina.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_kumis_kucing.png',
                      audioUrl: 'kumis-kucing.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_kunyit.png',
                      audioUrl: 'kunyit.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_lengkuas.png',
                      audioUrl: 'lengkuas.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_lidah_buaya.png',
                      audioUrl: 'lidah-buaya.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_mengkudu.png',
                      audioUrl: 'mengkudu.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_mint.png',
                      audioUrl: 'mint.mp3',
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_obat/icon_tanaman_rosela.png',
                      audioUrl: 'rosela.mp3',
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
            width: 300,
            height: 25,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Tanaman Pangan',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: 200,
            height: 450,
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
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_brokoli.png',
                      audioUrl: 'brokoli.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_gandum.png',
                      audioUrl: 'gandum.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_jagung.png',
                      audioUrl: 'jagung.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_kelapa.png',
                      audioUrl: 'kelapa.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_ketela.png',
                      audioUrl: 'ketela.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_kol.png',
                      audioUrl: 'kubis.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_padi.png',
                      audioUrl: 'padi.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_pepaya.png',
                      audioUrl: 'pepaya.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_pisang.png',
                      audioUrl: 'pisang.mp3',
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: TanamanItem(
                      Imageurl:
                          'icon_tanaman/icon_tanaman_pangan/icon_tanaman_sawi.png',
                      audioUrl: 'sawi.mp3',
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
