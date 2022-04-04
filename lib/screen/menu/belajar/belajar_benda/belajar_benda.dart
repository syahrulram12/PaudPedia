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
  AudioCache SfxBenda = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SfxBenda.play('audio/BELAJAR/benda/belajar-mengenal-benda.mp3');
  }

  ChangePage(act) {
    setState(() {
      switch (act) {
        case 2:
          page = 2;
          break;
        case 3:
          page = 3;
          break;
        default:
          page = 1;
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
      children: [
        Container(
            height: height / 1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/all_background/belajar/03_belajar_benda_background.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
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
                          child: ClipRRect(
                            child: GestureDetector(
                                child: Image.asset(
                                    'assets/icons/tab_bar_auto.png',
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: height / 8,
                ),
                Container(
                  width: width / 1.2,
                  height: height / 1.7,
                  margin: EdgeInsets.symmetric(horizontal: (width / 8) / 2),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(37, 150, 190, 1),
                      border:
                          Border.all(width: 15, color: Colors.brown.shade500),
                      borderRadius: BorderRadius.circular(50)),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          left: width / -2 / 5,
                          child: Container(
                            width: width / 2,
                            child: Center(
                              child: Container(
                                  height: 400,
                                  width: 300,
                                  margin: EdgeInsets.only(top: 60),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(2),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                bottom: 2, left: 2),
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.4),
                                                spreadRadius: 50,
                                                blurRadius: 1,
                                                offset: Offset(-50, 30),
                                              )
                                            ]),
                                            child: GestureDetector(
                                                onTap: () {
                                                  ChangePage(1);
                                                },
                                                child: Image.asset(
                                                    'assets/icons/tab_bar_name_object-01.png',
                                                    fit: BoxFit.contain)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.all(2),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 2, left: 2),
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    spreadRadius: 1,
                                                    offset: Offset(0, 0),
                                                  )
                                                ]),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    ChangePage(2);
                                                  },
                                                  child: Image.asset(
                                                    'assets/icons/tab_bar_name_object-02.png',
                                                    fit: BoxFit.contain,
                                                  ),
                                                )),
                                          )),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.all(2),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 2, left: 2),
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    spreadRadius: 1,
                                                    offset: Offset(0, 0),
                                                  )
                                                ]),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    ChangePage(3);
                                                  },
                                                  child: Image.asset(
                                                    'assets/icons/tab_bar_name_object-03.png',
                                                    fit: BoxFit.contain,
                                                  ),
                                                )),
                                          )),
                                    ],
                                  )),
                            ),
                          )),
                      Positioned(
                        top: -25,
                        right: -7,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: -2,
                                    blurRadius: 1,
                                    offset: Offset(2, 0))
                              ]),
                          width: 230,
                          height: height / 1.50,
                          child: Page(),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
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
  AudioCache SfxItem = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  PlayAudio(audioUrl) {
    audioPlayer.stop();
    SfxItem = AudioCache(fixedPlayer: audioPlayer);
    SfxItem.play('audio/BELAJAR/benda/' + audioUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ClipRRect(
        child: GestureDetector(
          onTap: () {
            PlayAudio(widget.audioUrl);
          },
          child: Image.asset(
            'assets/icons/' + widget.Imageurl + '',
            fit: BoxFit.contain,
          ),
        ),
      ),
    ));
  }
}
