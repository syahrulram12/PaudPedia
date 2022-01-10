import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class AngkaHome extends StatelessWidget {
  const AngkaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/all_background/belajar/02_belajar_angka_background.jpg'),
                    fit: BoxFit.cover)),
          ),
          Positioned(
              top: 25,
              left: 15,
              child: Row(
                children: <Widget>[
                  Positioned(
                      child: GestureDetector(
                    onTap: Get.back,
                    child: Image.asset('assets/icons/tab_bar_menu.png'),
                  )),
                ],
              )),
        ],
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage('assets/images/Asset_2.png'),
      //           fit: BoxFit.cover)),
      // ),
    );
  }
}
