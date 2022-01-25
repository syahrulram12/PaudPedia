import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_sayur/sayur_detail.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_sayur/belajar_sayur.dart';

class SayurHome extends StatefulWidget {
  const SayurHome({Key? key}) : super(key: key);

  @override
  _SayurHomeState createState() => _SayurHomeState();
}

class _SayurHomeState extends State<SayurHome> {
  AudioCache SfxSayur = AudioCache();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SfxSayur.play('audio/BELAJAR/sayur/belajar-mengenal-sayur.mp3');
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
                        'assets/images/all_background/belajar/06_belajar_sayuran_background.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            child: ClipRRect(
                              child: GestureDetector(
                                  onTap: () => {Get.back()},
                                  child: Image.asset(
                                    'assets/icons/tab_bar_menu.png',
                                    width: 85,
                                  )),
                            ),
                          ),
                          Container(
                            child: ClipRRect(
                              child: GestureDetector(
                                  child: Image.asset(
                                    'assets/icons/tab_bar_auto.png',
                                    width: 85,
                                  )),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(height: height / 10),
                  SizedBox(height: height / 8),
                  Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Sayur(),
                      ))
                ],
          ),
        ),
      ],
    ));
  }
}

class SayurItem extends StatefulWidget {
  final String Imageurl;
  final String audioUrl;
  final Function()? OnMenuClick;
  const SayurItem(
      {Key? key, required this.Imageurl,  required this.audioUrl, this.OnMenuClick}) : super(key: key);

  @override
  _SayurItemState createState() => _SayurItemState();
}

class _SayurItemState extends State<SayurItem> {
  AudioCache SfxSayur = AudioCache();


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: GestureDetector(
          onTap: () {
            SfxSayur.play('audio/BELAJAR/sayur/' + widget.audioUrl);
          },
          child: Image.asset(
            'assets/icons/' + widget.Imageurl + '',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
