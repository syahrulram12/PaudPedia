import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_buah/buah_detail.dart';

class BuahHome extends StatelessWidget {
  const BuahHome({Key? key}) : super(key: key);

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
                    'assets/images/all_background/belajar/05_belajar_buah_background.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Container(
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
                              child: Image.asset(
                            'assets/icons/tab_bar_auto.png',
                            width: 125,
                          )),
                        ),
                      ),
                    ]),
              ),
              Container(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: Buah(),
              ))
            ],
          ),
        ),
      ],
    ));
  }
}

class BuahItem extends StatelessWidget {
  final String Imageurl;
  final Function()? OnMenuClick;

  const BuahItem({Key? key, required this.Imageurl, this.OnMenuClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: GestureDetector(
          onTap: OnMenuClick,
          child: Image.asset(
            'assets/icons/' + Imageurl + '',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
