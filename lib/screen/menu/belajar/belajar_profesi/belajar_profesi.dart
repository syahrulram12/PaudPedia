import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_profesi/profesi_detail.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_profesi/belajar_profesi.dart';

class ProfesiHome extends StatelessWidget {
  const ProfesiHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/all_background/belajar/10_belajar_profesi-01.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ]),
                  ),
                  SizedBox(height: height / 10),
                  Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1),
                        child: Profesi1(),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}

class ProfesiItem extends StatelessWidget {
  final String Imageurl;
  final Function()? OnMenuClick;

  const ProfesiItem({Key? key, required this.Imageurl, this.OnMenuClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 3),
          width: 150,
          height: 80,
          child: ClipRRect(
            child: GestureDetector(
              onTap: OnMenuClick,
              child: Image.asset(
                'assets/icons/' + Imageurl + '',
                fit: BoxFit.contain,
                    height: 80,
                    width: 150,
                  ),
              ),
            ),
          ),
        );

  }
}