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
              SizedBox(
                height: height / 9,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: (width / 8) / 2),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 150, 190, 1),
                    border: Border.all(width: 15, color: Colors.brown.shade500),
                    borderRadius: BorderRadius.circular(50)),
                child: Page(),
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
  AudioPlayer audioPlayer = AudioPlayer();

  void PlayAudio(audioUrl) {
    audioPlayer.stop();
    SfxHewan = AudioCache(fixedPlayer: audioPlayer);
    SfxHewan.play('audio/BELAJAR/fauna/' + audioUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.yellow.shade400,
              borderRadius: BorderRadius.circular(13),
            ),
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
            )));
    ;
  }
}
