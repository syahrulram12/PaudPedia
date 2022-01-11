import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class HurufHome extends StatefulWidget {
  const HurufHome({Key? key}) : super(key: key);

  @override
  _HurufHomeState createState() => _HurufHomeState();
}

class _HurufHomeState extends State<HurufHome> {
  @override
  double Benda = 1;
  String ImageBg =
      'assets/images/all_background/belajar/03_belajar_benda_background_dapur.jpg';

  ChangeStyle(Benda) {
    setState(() {
      if (Benda == 1) {
        ImageBg =
            'assets/images/all_background/belajar/03_belajar_benda_background_dapur.jpg';
      } else if (Benda == 2) {
        ImageBg =
            'assets/images/all_background/belajar/03_belajar_benda_background_kamar_mandi.jpg';
      } else {
        ImageBg =
            'assets/images/all_background/belajar/03_belajar_benda_background_kamar_tidur.jpg';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(image: ChangeStyle(Benda)()),
            child: Column(children: [
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
                    child: ClipRRect(
                      child: GestureDetector(
                          child: Image.asset(
                        'assets/icons/tab_bar_auto.png',
                        width: 125,
                      )),
                    ),
                  ),
                ],
              )),
            ])));
  }
}
