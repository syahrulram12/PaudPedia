import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class HewanHome extends StatefulWidget {
  const HewanHome({Key? key}) : super(key: key);

  @override
  _HewanHomeState createState() => _HewanHomeState();
}

class _HewanHomeState extends State<HewanHome> {
  @override
  double Benda = 1;
  String ImageBg =
      'assets/images/all_background/belajar/09_belajar_hewan_background_hutan.jpg';

  ChangeStyle(Benda) {
    setState(() {
      if (Benda == 1) {
        ImageBg =
            'assets/images/all_background/belajar/09_belajar_hewan_background_hutan.jpg';
      } else if (Benda == 2) {
        ImageBg =
            'assets/images/all_background/belajar/09_belajar_hewan_background_ikanhias.jpg';
      } else if (Benda == 3) {
        ImageBg =
            'assets/images/all_background/belajar/09_belajar_hewan_background_langka.jpg';
      } else {
        ImageBg =
            'assets/images/all_background/belajar/09_belajar_hewan_background_laut.jpg';
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
