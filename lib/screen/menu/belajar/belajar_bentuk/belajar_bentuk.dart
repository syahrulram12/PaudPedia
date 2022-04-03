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

  final Function()? OnMenuClick;
  const BentukItem({Key? key, required this.Imageurl, this.OnMenuClick})
      : super(key: key);

  @override
  _BentukItemState createState() => _BentukItemState();
}

class _BentukItemState extends State<BentukItem> {
  AudioCache SfxBentuk = AudioCache();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        color: Colors.blue,
        margin: EdgeInsets.only(bottom: 2),
        width: width / 5,
        height: height / 9.5,
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
