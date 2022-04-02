import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_huruf/huruf_detail.dart';

class HurufHome extends StatefulWidget {
  const HurufHome({Key? key}) : super(key: key);
  @override
  _HurufHomeState createState() => _HurufHomeState();
}

class _HurufHomeState extends State<HurufHome> {
  AudioCache audioCache = AudioCache();

  bool Huruf = true;
  @override
  void initState() {
    // TODO: implement initState
    audioCache.play('audio/BELAJAR/huruf/belajar-huruf.mp3');
    super.initState();
  }

  // Play(){
  //   if(audioCache == PLAYING)
  // }\

  ChangeStyle(act) {
    setState(() {
      if (act == 'kecil') {
        Huruf = false;
      } else {
        Huruf = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/all_background/belajar/01_belajar_huruf_background.jpg'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(
                    horizontal: (width / 8) / 2, vertical: 25),
                height: (height / 8) / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: ClipRRect(
                        child: GestureDetector(
                            onTap: () => {Get.back()},
                            child: Image.asset(
                              'assets/icons/tab_bar_menu.png',
                              fit: BoxFit.contain,
                            )),
                      ),
                    ),
                    Container(
                        width: width / 5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons/tab_bar_alfabet.png'),
                                fit: BoxFit.contain)),
                        child: Row(
                          children: [
                            Flexible(child: ClipRRect(
                              child: Container(
                                child: GestureDetector(onTap: () {
                                  ChangeStyle('besar');
                                  audioCache.play(
                                      'audio/BELAJAR/huruf/belajar-huruf-besar.mp3');
                                }),
                              ),
                            )),
                            Flexible(child: Container(
                              child: GestureDetector(
                                onTap: () {
                                  ChangeStyle('kecil');
                                  audioCache.play(
                                      'audio/BELAJAR/huruf/belajar-huruf-kecil.mp3');
                                },
                              ),
                            ))
                          ],
                        )),
                    Container(
                      width: width / 5,
                      child: GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/tab_bar_auto.png',
                              fit: BoxFit.cover)),
                    ),
                  ],
                )),
            SizedBox(height: height / 10),
            Container(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: HurufHome(),
              ),
            )
          ],
        ))
      ],
    ));
  }
}

class HurufItem extends StatefulWidget {
  final String imageurl;
  final Function()? onmenuclick;

  const HurufItem({
    Key? key,
    required this.imageurl,
    this.onmenuclick,
  }) : super(key: key);

  @override
  _HurufItemState createState() => _HurufItemState();
}

class _HurufItemState extends State<HurufItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: GestureDetector(
            child: Image.asset(
              'assets/icons/' + widget.imageurl + '',
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
