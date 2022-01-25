import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_hewan/hewan_detail.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_hewan/belajar_hewan.dart';

class HewanHome extends StatefulWidget {
  const HewanHome({Key? key}) : super(key: key);

  @override
  _HewanHomeState createState() => _HewanHomeState();
}

class _HewanHomeState extends State<HewanHome> {
  AudioCache SfxHewan = AudioCache();
  int page = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SfxHewan.play('audio/BELAJAR/hewan/belajar-fauna.mp3');
  }

  ChangePage(act) {
    setState(() {
      if (act == 'tambah') {
        page = page + 1;
        if (page > 4) {
          page = 4;
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
    } else {
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
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/all_background/belajar/09_belajar_hewan_background_hutan.jpg'),
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
              SizedBox(height: height / 10),
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

class HewanItem extends StatefulWidget {
  final String Imageurl;
  final String audioUrl;
  final Function()? OnMenuClick;
  const HewanItem(
      {Key? key,
      required this.Imageurl,
      this.OnMenuClick,
      required this.audioUrl})
      : super(key: key);

  @override
  _HewanItemState createState() => _HewanItemState();
}

class _HewanItemState extends State<HewanItem> {
  AudioCache SfxHewan = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: GestureDetector(
          onTap: () {
            SfxHewan.play('audio/BELAJAR/fauna/' + widget.audioUrl);
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
