import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_buah/buah_detail.dart';

class BuahHome extends StatefulWidget {
  const BuahHome({Key? key}) : super(key: key);

  @override
  _BuahHomeState createState() => _BuahHomeState();
}

class _BuahHomeState extends State<BuahHome> {
  AudioCache SfxBuah = AudioCache();
  AudioPlayer audio = AudioPlayer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SfxBuah = AudioCache(fixedPlayer: audio);
    SfxBuah.play('audio/BELAJAR/buah/belajar-mengenal-buah.mp3');
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
                    'assets/images/all_background/belajar/05_belajar_buah_background.jpg'),
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
              SizedBox(height: height / 10),
              SizedBox(height: height / 8),
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

class BuahItem extends StatefulWidget {
  final String Imageurl;
  final String audioUrl;
  final Function()? OnMenuClick;

  const BuahItem(
      {Key? key,
      required this.Imageurl,
      this.OnMenuClick,
      required this.audioUrl})
      : super(key: key);

  @override
  _BuahItemState createState() => _BuahItemState();
}

class _BuahItemState extends State<BuahItem> {
  AudioCache SfxBuah = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 80,
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: GestureDetector(
          onTap: () {
            SfxBuah.play('audio/BELAJAR/buah/' + widget.audioUrl);
          },
          child: Image.asset(
            'assets/icons/' + widget.Imageurl + '',
            fit: BoxFit.cover,
          ),
        ),
      ),
    ));
  }
}
