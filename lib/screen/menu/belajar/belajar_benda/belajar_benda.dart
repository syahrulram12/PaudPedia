import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_benda/benda_list.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class BendaHome extends StatefulWidget {
  const BendaHome({Key? key}) : super(key: key);

  @override
  _BendaHomeState createState() => _BendaHomeState();
}

class _BendaHomeState extends State<BendaHome> {
  @override
  double page = 1;

  ChangePage(act) {
    setState(() {
      if (act == 'tambah') {
        page = page + 1;
        if (page > 3) {
          page = 3;
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
    } else {
      return Page3();
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
          height: height / 1,
          width: width / 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/all_background/belajar/03_belajar_benda_background.jpg'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            top: 15,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/all_background/belajar/belajar_benda.png'))),
              width: width / 1,
              height: (height / 8) / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      width: width / 6,
                      child: ClipRRect(
                        child: GestureDetector(
                            onTap: () => {Get.back()},
                            child: Image.asset('assets/icons/tab_bar_menu.png',
                                fit: BoxFit.contain)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: width / 6,
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
                  ),
                  Flexible(
                    child: Container(
                      width: width / 6,
                      child: ClipRRect(
                        child: GestureDetector(
                            onTap: () => {Get.back()},
                            child: Image.asset('assets/icons/tab_bar_auto.png',
                                fit: BoxFit.contain)),
                      ),
                    ),
                  )
                ],
              ),
            )),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: (width / 8) / 2, vertical: height / 6),
            decoration: BoxDecoration(border: Border.all(width: 2)),
            child: Page(),
          ),
        )
      ],
    ));
  }
}

class BendaItem extends StatefulWidget {
  final String Imageurl;
  final String audioUrl;
  final Function()? OnMenuClick;
  const BendaItem(
      {Key? key,
      required this.Imageurl,
      this.OnMenuClick,
      required this.audioUrl})
      : super(key: key);

  @override
  _BendaItemState createState() => _BendaItemState();
}

class _BendaItemState extends State<BendaItem> {
  AudioCache SfxAngka = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: GestureDetector(
          onTap: () {
            SfxAngka.play('audio/BELAJAR/angka/' + widget.audioUrl);
          },
          child: Image.asset(
            'assets/icons/' + widget.Imageurl + '',
            fit: BoxFit.cover,
          ),
        ),
      ),
    ));
    ;
  }
}
