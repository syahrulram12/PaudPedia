import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_tanaman/tanaman_list.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class TanamanHome extends StatefulWidget {
  const TanamanHome({Key? key}) : super(key: key);

  @override
  _TanamanHomeState createState() => _TanamanHomeState();
}

class _TanamanHomeState extends State<TanamanHome> {
  @override
  double page = 1;
  String judul = 'Tanaman Bunga';
  AudioCache SfxTanaman = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SfxTanaman.play('audio/BELAJAR/tanaman.mp3');
  }

  Future<void> PlayAudio(audioUrl) async {
    SfxTanaman = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.release();
    await SfxTanaman.play('audio/BELAJAR/tanaman/' + audioUrl);
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
      PlayAudio('tanaman-bunga.mp3');
      return Page1();
    } else if (page == 2) {
      PlayAudio('tanaman-hias.mp3');
      return Page2();
    } else if (page == 3) {
      PlayAudio('tanaman-obat.mp3');
      return Page3();
    } else {
      PlayAudio('tanaman-pangan.mp3');
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
                      'assets/images/all_background/belajar/08_belajar-tanaman_background.jpg'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
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
                          image:
                              AssetImage('assets/icons/tab_bar_right_left.png'),
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
                  width: width / 5,
                  child: ClipRRect(
                    child: GestureDetector(
                        onTap: () => {Get.back()},
                        child: Image.asset('assets/icons/tab_bar_auto.png',
                            fit: BoxFit.cover)),
                  ),
                ),
              )
            ],
          ),
        )),
        Align(
          alignment: Alignment.center,
          heightFactor: 55,
          child: Container(
              height: height / 1.5,
              margin: EdgeInsets.symmetric(
                  horizontal: (width / 8) / 2, vertical: 100),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 15, color: Colors.brown.shade500),
                  borderRadius: BorderRadius.circular(50)),
              child: Wrap(
                children: [Page()],
              )),
        )
      ],
    ));
  }
}

class TanamanItem extends StatefulWidget {
  final String Imageurl;
  final String audioUrl;
  final Function()? OnMenuClick;
  const TanamanItem(
      {Key? key,
      required this.Imageurl,
      this.OnMenuClick,
      required this.audioUrl})
      : super(key: key);

  @override
  _TanamanItemState createState() => _TanamanItemState();
}

class _TanamanItemState extends State<TanamanItem> {
  AudioCache SfxTanaman = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  void PlayAudio(audioUrl) {
    SfxTanaman = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.release();
    SfxTanaman.play('audio/BELAJAR/tanaman/' + audioUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.pink.shade100,
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
