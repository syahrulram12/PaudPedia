import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_profesi/profesi_detail.dart';

class ProfesiHome extends StatelessWidget {
  const ProfesiHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/all_background/belajar/10_belajar_profesi-01.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
              child: Wrap(
            children: [
              Container(
                height: height / 8 / 2,
                margin: EdgeInsets.symmetric(
                    horizontal: 15, vertical: (height / 8) / 5),
                child: ClipRRect(
                  child: GestureDetector(
                      onTap: () => {Get.back()},
                      child: Image.asset(
                        'assets/icons/tab_bar_menu.png',
                      )),
                ),
              ),
              SizedBox(
                height: height / 4,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 500,
                  child: Profesi(),
                ),
              )
            ],
          )),
        ),
      ],
    ));
  }
}

class ProfesiItem extends StatefulWidget {
  final String Imageurl;

  final Function()? OnMenuClick;
  const ProfesiItem({Key? key, required this.Imageurl, this.OnMenuClick})
      : super(key: key);


  @override
  _ProfesiItemState createState() => _ProfesiItemState();
}

class _ProfesiItemState extends State<ProfesiItem> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache SfxProfesi = AudioCache();
  bool IsPlaying = false;

  void PlayAudio(audioUrl) {
    SetState() {
      if (IsPlaying = false) {
        IsPlaying = true;
      } else
        (audioPlayer.stop());
      SfxProfesi.play(audioUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
        child: Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      width: width / 2.5,
      child: ClipRRect(
          child: Image.asset(
            'assets/icons/' + widget.Imageurl + '',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
