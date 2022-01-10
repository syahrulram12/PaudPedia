import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class HurufHome extends StatelessWidget {
  const HurufHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/all_background/belajar/01_belajar_huruf_background.jpg'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            top: 15,
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: GestureDetector(
                  onTap: Get.back,
                  child: Image.asset('assets/images/back.png'),
                ))
              ],
            )),
      ],
    ));
  }
}
