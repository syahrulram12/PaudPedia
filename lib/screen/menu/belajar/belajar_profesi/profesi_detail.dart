import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_profesi/belajar_profesi.dart';

class Profesi extends StatefulWidget {
  const Profesi({Key? key}) : super(key: key);

  @override
  State<Profesi> createState() => _ProfesiState();
}

class _ProfesiState extends State<Profesi> with TickerProviderStateMixin {
  var profesiItem1 = 1.0;
  var profesiItem2 = 1.0;
  var profesiItem3 = 1.0;
  var profesiItem4 = 1.0;
  var profesiItem5 = 1.0;
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;
  late AnimationController _controller5;
  AudioCache SfxAngka = AudioCache();
  AudioPlayer audio = AudioPlayer();

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.1,
        duration: Duration(milliseconds: 300));
    _controller1.addListener(() {
      setState(() {
        profesiItem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.1,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        profesiItem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.1,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        profesiItem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.1,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        profesiItem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.1,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        profesiItem5 = _controller5.value;
      });
    });
    SfxAngka = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxAngka.play('audio/BELAJAR/profesi/' + url);
  }

  @override
    Widget build(BuildContext context) {
      double width = MediaQuery
          .of(context)
          .size
          .width;
      return Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                      child: ProfesiItem(
                        Imageurl: 'icon_profesi/pilih_profesi.png',

                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: GestureDetector(
                        onTap: () {
                          PlayAudio('guru.mp3');
                          setState(() {
                            _controller1.forward(from: 0.0);
                          });
                          Timer(Duration(seconds: 1), () {
                            setState(() {
                              _controller1.reverse();
                            });
                          });
                        },
                        child: Transform.scale(
                          scale: profesiItem1,
                          child: ProfesiItem(
                            Imageurl: 'icon_profesi/icon_teacher.png',
                          ),
                        ),
                    ),
                  ),
                  Flexible(
                  child: GestureDetector(
                  onTap: () {
                    PlayAudio('pemadam-kebakaran.mp3');
                    setState(() {
                      _controller2.forward(from: 0.0);
                  });
                    Timer(Duration(seconds: 1), () {
                      setState(() {
                        _controller2.reverse();
                      });
                    });
                    },
                  child: Transform.scale(
                    scale: profesiItem2,
                    child: ProfesiItem(
                  Imageurl: 'icon_profesi/icon_fire.png',
                    ),
                  ),
                  ),
                  )
                ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
              child: GestureDetector(
              onTap: () {
                PlayAudio('dokter.mp3');
                setState(() {
                  _controller3.forward(from: 0.0);
                });
                Timer(Duration(seconds: 1), () {
                  setState(() {
                    _controller3.reverse();
                  });
                });
                },
                child: Transform.scale(
                    scale: profesiItem3,
                    child: ProfesiItem(
                      Imageurl: 'icon_profesi/icon_doctor.png',
                    ),
                ),
      ),
    ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    PlayAudio('polisi.mp3');
                    setState(() {
                      _controller4.forward(from: 0.0);
                    });
                    Timer(Duration(seconds: 1), () {
                      setState(() {
                        _controller4.reverse();
                      });
                    });
                    },
                  child: Transform.scale(
                      scale: profesiItem4,
                      child: ProfesiItem(
                        Imageurl: 'icon_profesi/icon_police.png',
                    ),
                  ),
                 ),
              ),
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('pelayan.mp3');
                        setState(() {
                          _controller5.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {
                            _controller5.reverse();
                          });
                        });
                      },
                        child: Transform.scale(
                        scale: profesiItem5,
                            child: ProfesiItem(
                              Imageurl: 'icon_profesi/icon_waiter.png',
                          ),
                    ),
                   ),
                  ),
                  Flexible(
                      child: Container()),
                ],
                ),
            ],
          ));
  }
}
