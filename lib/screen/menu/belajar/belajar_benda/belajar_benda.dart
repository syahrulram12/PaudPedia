import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class BendaHome extends StatefulWidget {
  const BendaHome({Key? key}) : super(key: key);

  @override
  _BendaHomeState createState() => _BendaHomeState();
}

class _BendaHomeState extends State<BendaHome> {
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
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(ImageBg))),
            child: Column(children: [
              Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              onTap: () {
                                ChangeStyle(3);
                              },
                              child: Image.asset(
                                'assets/icons/tab_bar_auto.png',
                                width: 125,
                              )),
                        ),
                      ),
                    ],
                  )),
              // Container(
              //   color: Colors.white,
              //   width: 100,
              //   child: Stack(
              //     children: [
              //       Positioned(
              //           top: 15,
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             mainAxisSize: MainAxisSize.max,
              //             children: [
              //               Container(
              //                 child: ClipRRect(
              //                   child: GestureDetector(
              //                       onTap: () => {Get.back()},
              //                       child: Image.asset(
              //                         'assets/icons/tab_bar_menu.png',
              //                         width: 100,
              //                       )),
              //                 ),
              //               ),
              //               Container(
              //                 child: ClipRRect(
              //                   child: GestureDetector(
              //                       onTap: () {
              //                         ChangeStyle(3);
              //                       },
              //                       child: Image.asset(
              //                         'assets/icons/tab_bar_auto.png',
              //                         width: 125,
              //                       )),
              //                 ),
              //               ),
              //             ],
              //           )),
              //     ],
              //   ),
              // )
            ])));
  }
}
