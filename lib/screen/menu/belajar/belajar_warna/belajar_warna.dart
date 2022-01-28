import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_warna/warna_detail.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_warna/belajar_warna.dart';

class WarnaHome extends StatefulWidget {
  const WarnaHome({Key? key}) : super(key: key);

  @override
  _WarnaHomeState createState() => _WarnaHomeState();
}

class _WarnaHomeState extends State<WarnaHome> {
  AudioCache SfxWarna = AudioCache();
  int page = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SfxWarna.play('audio/BELAJAR/warna/belajar-warna.mp3');
  }

  ChangePage(act) {
    setState(() {
      if (act == 'tambah') {
        page = page + 1;
        if (page > 10) {
          page = 10;
        }
      } else {
        page = page - 1;
        if (page < 1) {
          page = 1;
        }
      }
    });
  }

  Page() {
    if (page == 1) {
      return Page1();
    } else if (page == 2) {
      return Page2();
    } else if (page == 3) {
      return Page3();
    } else if (page == 4) {
      return Page4();
    } else if (page == 5) {
      return Page5();
    } else if (page == 6) {
      return Page6();
    } else if (page == 7) {
      return Page7();
    } else if (page == 8) {
      return Page8();
    } else if (page == 9) {
      return Page9();
    } else {
      return Page10();
    }
  }

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
                    'assets/images/all_background/belajar/07_belajar_warna_background.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: (width / 8) / 2, vertical: 25),
                height: (height / 8) / 2,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: width / 6,
                        child: ClipRRect(
                          child: GestureDetector(
                              onTap: () => {Get.back()},
                              child: Image.asset(
                                  'assets/icons/tab_bar_menu.png',
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      Container(
                        width: width / 5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons/tab_bar_right_left.png'),
                                fit: BoxFit.contain)),
                        child: Row(
                          children: [
                            Flexible(
                              child: Container(
                                child: GestureDetector(
                                  onTap: () {
                                    ChangePage('kurang');
                                  },
                                ),
                              ),
                            ),
                            Flexible(child: Container(
                              child: GestureDetector(
                                onTap: () {
                                  ChangePage('tambah');
                                },
                              ),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        width: width / 5,
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
              SizedBox(height: height / 8),
              Container(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: Page(),
              ))
            ],
          ),
        ),
      ],
    ));
  }
}

class WarnaItem extends StatefulWidget {
  final String Imageurl;
  final double width;
  final double height;
  final String audioUrl;
  final Function()? OnMenuClick;
  const WarnaItem(
      {Key? key,
      required this.Imageurl,
      this.OnMenuClick,
      required this.width,
      required this.height,
      required this.audioUrl})
      : super(key: key);

  @override
  _WarnaItemState createState() => _WarnaItemState();
}

class _WarnaItemState extends State<WarnaItem> {
  AudioCache SfxWarna = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: GestureDetector(
          onTap: () {
            SfxWarna.play('audio/BELAJAR/warna/' + widget.audioUrl);
          },
          child: Image.asset(
            'assets/icons/icon_cake/' + widget.Imageurl + '',
            fit: BoxFit.cover,
          ),
        ),
      ),
    ));
    ;
  }
}
