import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_huruf/huruf_detail.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_angka/belajar_angka.dart';

class HurufHome extends StatefulWidget {
  const HurufHome({Key? key}) : super(key: key);
  @override
  _HurufHomeState createState() => _HurufHomeState();
}

class _HurufHomeState extends State<HurufHome> {
  @override
  bool Huruf = true;

  ChangeStyle() {
    setState(() {
      if (Huruf == true) {
        Huruf = false;
      } else {
        Huruf = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/all_background/belajar/01_belajar_huruf_background.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                  child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: ClipRRect(
                      child: GestureDetector(
                          onTap: () => {Get.back()},
                          child: Image.asset(
                            'assets/icons/tab_bar_menu.png',
                            width: 100,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    child: ClipRRect(
                      child: GestureDetector(
                          onTap: () => {ChangeStyle()},
                          child: Image.asset(
                            'assets/icons/tab_bar_alfabet.png',
                            width: 100,
                          )),
                    ),
                  ),
                  Container(
                    child: ClipRRect(
                      child: GestureDetector(
                          onTap: () { },
                          child: Image.asset(
                            'assets/icons/tab_bar_auto.png',
                            width: 125,
                          )),
                    ),
                  ),
                ],
              )),
              SizedBox(height: height / 4),
              Container(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Huruf ? TombolHuruf(UrlHuruf: 'icon_alfabet_big/icon_alfabet_-'): TombolHuruf(UrlHuruf:'icon_alfabet_small/icon_alfabet_small--' ,),
              ))
              //Position buat ngatur menu atas
              //Buat Isi Bawah Huruf
            ],
          )),
    );
  }
}


class HurufItem extends StatefulWidget {
  final String Imageurl;
  final String audioUrl;
  final Function()? OnMenuClick;

  const HurufItem({
    Key? key,
    required this.Imageurl,
    this.OnMenuClick,
    required this.audioUrl
  }) : super(key: key);

  @override
  _HurufItemState createState() => _HurufItemState();
}

class _HurufItemState extends State<HurufItem> {
  AudioCache SfxHuruf = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: GestureDetector(
            onTap: () {
              SfxHuruf.play('audio/BELAJAR/huruf/' + widget.audioUrl);
            },
            child: Image.asset(
              'assets/icons/' + widget.Imageurl + '',
              fit: BoxFit.fill,
            ),
          )
          ),
        );
  }
}

// class HurufItem extends StatelessWidget {
//   final String Imageurl;
//   // final String audioUrl;
//   final Function()? OnMenuClick;
//
//   const HurufItem({
//     Key? key,
//     required this.Imageurl,
//     this.OnMenuClick,
//     // required this.audioUrl
//   }) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 60,
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(13),
//             child: Image.asset(
//               'assets/icons/' + Imageurl + '',
//               fit: BoxFit.fill,
//             ),
//           ),
//         );
//   }
// }
