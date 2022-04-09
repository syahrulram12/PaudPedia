import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_sayur/belajar_sayur.dart';

class Sayur extends StatefulWidget {
  const Sayur({Key? key}) : super(key: key);

  @override
  State<Sayur> createState() => _SayurState();
}

class _SayurState extends State<Sayur> with TickerProviderStateMixin {
  var sayuritem1 = 1.0;
  var sayuritem2 = 1.0;
  var sayuritem3 = 1.0;
  var sayuritem4 = 1.0;
  var sayuritem5 = 1.0;
  var sayuritem6 = 1.0;
  var sayuritem7 = 1.0;
  var sayuritem8 = 1.0;
  var sayuritem9 = 1.0;
  var sayuritem10 = 1.0;
  var sayuritem11 = 1.0;
  var sayuritem12 = 1.0;
  var sayuritem13 = 1.0;
  var sayuritem14 = 1.0;
  var sayuritem15 = 1.0;
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;
  late AnimationController _controller5;
  late AnimationController _controller6;
  late AnimationController _controller7;
  late AnimationController _controller8;
  late AnimationController _controller9;
  late AnimationController _controller10;
  late AnimationController _controller11;
  late AnimationController _controller12;
  late AnimationController _controller13;
  late AnimationController _controller14;
  late AnimationController _controller15;
  AudioCache SfxAngka = AudioCache();
  AudioPlayer audio = AudioPlayer();

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller1.addListener(() {
      setState(() {
        sayuritem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        sayuritem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        sayuritem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        sayuritem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        sayuritem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        sayuritem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        sayuritem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        sayuritem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        sayuritem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        sayuritem10 = _controller10.value;
      });
    });
    _controller11 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller11.addListener(() {
      setState(() {
        sayuritem11 = _controller11.value;
      });
    });
    _controller12 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller12.addListener(() {
      setState(() {
        sayuritem12 = _controller12.value;
      });
    });
    _controller13 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller13.addListener(() {
      setState(() {
        sayuritem13 = _controller13.value;
      });
    });
    _controller14 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller14.addListener(() {
      setState(() {
        sayuritem14 = _controller14.value;
      });
    });
    _controller15 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller15.addListener(() {
      setState(() {
        sayuritem15 = _controller15.value;
      });
    });
    SfxAngka = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxAngka.play('audio/BELAJAR/sayur/' + url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(children: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                PlayAudio('tomat.mp3');
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
                scale: sayuritem1,
                child: SayurItem(
                  Imageurl: 'icon_vegetable/icon_vegetable-03.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                PlayAudio('bawang-merah.mp3');
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
                scale: sayuritem2,
                child: SayurItem(
                  Imageurl: 'icon_vegetable/icon_vegetable-05.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                PlayAudio('daun-bawang.mp3');
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
                scale: sayuritem3,
                child: SayurItem(
                  Imageurl: 'icon_vegetable/icon_vegetable-07.png',
                ),
              ),
            ),
          )
        ]),
        Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('brokoli.mp3');
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
                    scale: sayuritem4,
                    child: SayurItem(
                      Imageurl: 'icon_vegetable/icon_vegetable-09.png',
                    )),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('cabai.mp3');
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
                  scale: sayuritem5,
                  child: SayurItem(
                    Imageurl: 'icon_vegetable/icon_vegetable-11.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('jagung.mp3');
                  setState(() {
                    _controller6.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller6.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: sayuritem6,
                  child: SayurItem(
                    Imageurl: 'icon_vegetable/icon_vegetable-13.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('jamur.mp3');
                  setState(() {
                    _controller7.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller7.reverse();
                    });
                  });
                },
                child: Transform.scale(
                    scale: sayuritem7,
                    child: SayurItem(
                      Imageurl: 'icon_vegetable/icon_vegetable-17.png',
                    )),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('kentang.mp3');
                  setState(() {
                    _controller8.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller8.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: sayuritem8,
                  child: SayurItem(
                    Imageurl: 'icon_vegetable/icon_vegetable-19.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('kacang-tanah.mp3');
                  setState(() {
                    _controller9.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller9.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: sayuritem9,
                  child: SayurItem(
                    Imageurl: 'icon_vegetable/icon_vegetable-15.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('kubis.mp3');
                  setState(() {
                    _controller10.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller10.reverse();
                    });
                  });
                },
                child: Transform.scale(
                    scale: sayuritem10,
                    child: SayurItem(
                      Imageurl: 'icon_vegetable/icon_vegetable-21.png',
                    )),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('labu.mp3');
                  setState(() {
                    _controller11.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller11.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: sayuritem11,
                  child: SayurItem(
                    Imageurl: 'icon_vegetable/icon_vegetable-23.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('lobak.mp3');
                  setState(() {
                    _controller12.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller12.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: sayuritem12,
                  child: SayurItem(
                    Imageurl: 'icon_vegetable/icon_vegetable-25.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('terong.mp3');
                  setState(() {
                    _controller13.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller13.reverse();
                    });
                  });
                },
                child: Transform.scale(
                    scale: sayuritem13,
                    child: SayurItem(
                      Imageurl: 'icon_vegetable/icon_vegetable-29.png',
                    )),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('paprika.mp3');
                  setState(() {
                    _controller14.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller14.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: sayuritem14,
                  child: SayurItem(
                    Imageurl: 'icon_vegetable/icon_vegetable-01.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('wortel.mp3');
                  setState(() {
                    _controller15.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller15.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: sayuritem15,
                  child: SayurItem(
                    Imageurl: 'icon_vegetable/icon_vegetable-27.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
