import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_angka/angka_detail.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_angka/belajar_angka.dart';

class AngkaHome extends StatefulWidget {
  const AngkaHome({Key? key}) : super(key: key);

  @override
  _AngkaHomeState createState() => _AngkaHomeState();
}

class _AngkaHomeState extends State<AngkaHome> {
  AudioCache SfxAngka = AudioCache();
  AudioPlayer audio = AudioPlayer();
  int page = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SfxAngka = AudioCache(fixedPlayer: audio);
    SfxAngka.play('audio/BELAJAR/angka/belajar-angka.mp3');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audio.release();
    audio.dispose();
  }

  ChangePage(act) {
    setState(() {
      if (act == 'tambah') {
        page = page + 1;
        if (page > 2) {
          page = 2;
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
      return Page();
    } else if (page == 2) {
      return Page2();
    } else if (page == 3) {
      return Page3();
    } else if (page == 4) {
      return Page4();
    } else {
      return Page5();
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
                        'assets/images/all_background/belajar/02_belajar_angka_background.jpg'),
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
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(height: height / 10),
                  Container(
                      color: Colors.blue,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Page1(),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}

class AngkaItem extends StatefulWidget {
  final String Imageurl;
  final Function()? OnMenuClick;
  const AngkaItem({Key? key, required this.Imageurl, this.OnMenuClick})
      : super(key: key);

  @override
  _AngkaItemState createState() => _AngkaItemState();
}

class _AngkaItemState extends State<AngkaItem> {
  AudioCache SfxAngka = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image.asset(
            'assets/icons/' + widget.Imageurl + '',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}