import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_hewan/hewan_list.dart';

class HewanHome extends StatefulWidget {
  const HewanHome({Key? key}) : super(key: key);

  @override
  _HewanHomeState createState() => _HewanHomeState();
}

class _HewanHomeState extends State<HewanHome> {
  @override
  double page = 1;
  String judul = 'Hewan Langka';
  AudioCache SfxHewan = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SfxHewan.play('audio/BELAJAR/fauna/belajar-mengenal-fauna.mp3');
  }

  Future<void> PlayAudio(audioUrl) async {
    SfxHewan = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.release();
    await SfxHewan.play('audio/BELAJAR/fauna/' + audioUrl);
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
        case 4:
          page = 4;
          break;
        default:
          page = 1;
      }
    });
  }

  Page() {
    if (page == 1) {
      // PlayAudio('binatang-langka.mp3');
      return Page1();
    } else if (page == 2) {
      // PlayAudio('binatang-hutan.mp3');
      return Page2();
    } else if (page == 3) {
      // PlayAudio('ikan-hias.mp3');
      return Page3();
    } else {
      // PlayAudio('binatang-laut.mp3');
      return Page4();
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
                      'assets/images/all_background/belajar/09_belajar_hewan_background.jpg'),
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
                height: height / 9,
              ),
              Container(
                width: width / 1.2,
                height: height / 1.7,
                margin: EdgeInsets.symmetric(horizontal: (width / 8) / 2),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 150, 190, 1),
                    border: Border.all(width: 10, color: Colors.brown.shade500),
                    borderRadius: BorderRadius.circular(50)),
                child: Stack(
                  alignment: Alignment.topLeft,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        left: -30,
                        child: Container(
                          width: width / 2,
                          child: Center(
                            child: Container(
                                height: 400,
                                width: width / 1.54,
                                margin: EdgeInsets.only(top: height / 5 / 3),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              bottom: 2, left: 2),
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              spreadRadius: 50,
                                              blurRadius: 1,
                                              offset: Offset(20, 30),
                                            )
                                          ]),
                                          child: GestureDetector(
                                              onTap: () {
                                                ChangePage(1);
                                              },
                                              child: Image.asset(
                                                  'assets/icons/tab_bar_name_hewan-01.png',
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              bottom: 2, left: 2),
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              spreadRadius: 50,
                                              blurRadius: 1,
                                              offset: Offset(20, 30),
                                            )
                                          ]),
                                          child: GestureDetector(
                                              onTap: () {
                                                ChangePage(2);
                                              },
                                              child: Image.asset(
                                                  'assets/icons/tab_bar_name_hewan-02.png',
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          width: width / 1,
                                          margin: EdgeInsets.only(
                                              bottom: 2, left: 2),
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              spreadRadius: 50,
                                              blurRadius: 1,
                                              offset: Offset(20, 30),
                                            )
                                          ]),
                                          child: GestureDetector(
                                              onTap: () {
                                                ChangePage(3);
                                              },
                                              child: Image.asset(
                                                  'assets/icons/tab_bar_name_hewan-03.png',
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              bottom: 2, left: 2),
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              spreadRadius: 50,
                                              blurRadius: 1,
                                              offset: Offset(20, 30),
                                            )
                                          ]),
                                          child: GestureDetector(
                                              onTap: () {
                                                ChangePage(4);
                                              },
                                              child: Image.asset(
                                                  'assets/icons/tab_bar_name_hewan-04.png',
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        )),
                    Positioned(
                      top: -25,
                      right: -7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
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
          ),
        ),
      ],
    ));
  }
}

class HewanItem extends StatefulWidget {
  final String Imageurl;
  final Function()? OnMenuClick;
  const HewanItem({
    Key? key,
    required this.Imageurl,
    this.OnMenuClick,
  }) : super(key: key);

  @override
  _HewanItemState createState() => _HewanItemState();
}

class _HewanItemState extends State<HewanItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ClipRRect(
        child: Image.asset(
          'assets/icons/' + widget.Imageurl + '',
          fit: BoxFit.contain,
        ),
      ),
    ));
  }
}
