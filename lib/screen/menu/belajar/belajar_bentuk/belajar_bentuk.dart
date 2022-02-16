import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_bentuk/bentuk_detail.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_bentuk/belajar_bentuk.dart';

class BentukHome extends StatefulWidget {
  const BentukHome({Key? key}) : super(key: key);

  @override
  _BentukHomeState createState() => _BentukHomeState();
}

class _BentukHomeState extends State<BentukHome> {
  AudioCache SfxBentuk = AudioCache();
  AudioPlayer audio = AudioPlayer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SfxBentuk = AudioCache(fixedPlayer: audio);
    SfxBentuk.play('audio/BELAJAR/bentuk/belajar-mengenal-bentuk.mp3');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audio.release();
    audio.dispose();
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
                    'assets/images/all_background/belajar/04_belajar_bentuk_background.jpg'),
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
                        width: width / 7,
                        child: ClipRRect(
                          child: GestureDetector(
                              onTap: () => {Get.back()},
                              child: Image.asset(
                                'assets/icons/tab_bar_menu.png',
                              )),
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
              Container(
                  margin: EdgeInsets.symmetric(horizontal: (width / 8) / 2),
                  child: Center(
                    child: Bentuk(),
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}

class BentukItem extends StatefulWidget {
  final String Imageurl;
  final String audioUrl;
  final Function()? OnMenuClick;
  const BentukItem(
      {Key? key,
      required this.Imageurl,
      required this.audioUrl,
      this.OnMenuClick})
      : super(key: key);

  @override
  _BentukItemState createState() => _BentukItemState();
}

class _BentukItemState extends State<BentukItem> {
  AudioCache SfxAngka = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  PlayAudio(audioUrl) {
    SfxAngka = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.release();
    SfxAngka.play('audio/BELAJAR/bentuk/' + audioUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      width: 90,
      height: 90,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: GestureDetector(
          onTap: () {
            PlayAudio(widget.audioUrl);
          },
          child: Image.asset(
            'assets/icons/' + widget.Imageurl + '',
            width: 20,
          ),
        ),
      ),
    );
  }
}
