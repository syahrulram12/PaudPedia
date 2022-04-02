import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_huruf/belajar_huruf.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> with TickerProviderStateMixin {
  var hurufitem1 = 0.8;
  var hurufitem2 = 0.8;
  var hurufitem3 = 0.8;
  var hurufitem4 = 0.8;
  var hurufitem5 = 0.8;
  var hurufitem6 = 0.8;
  var hurufitem7 = 0.8;
  var hurufitem8 = 0.8;
  var hurufitem9 = 0.8;
  var hurufitem10 = 0.8;
  var hurufitem11 = 0.8;
  var hurufitem12 = 0.8;
  var hurufitem13 = 0.8;
  var hurufitem14 = 0.8;
  var hurufitem15 = 0.8;
  var hurufitem16 = 0.8;
  var hurufitem17 = 0.8;
  var hurufitem18 = 0.8;
  var hurufitem19 = 0.8;
  var hurufitem20 = 0.8;
  var hurufitem21 = 0.8;
  var hurufitem22 = 0.8;
  var hurufitem23 = 0.8;
  var hurufitem24 = 0.8;
  var hurufitem25 = 0.8;
  var hurufitem26 = 0.8;

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
  late AnimationController _controller16;
  late AnimationController _controller17;
  late AnimationController _controller18;
  late AnimationController _controller19;
  late AnimationController _controller20;
  late AnimationController _controller21;
  late AnimationController _controller22;
  late AnimationController _controller23;
  late AnimationController _controller24;
  late AnimationController _controller25;
  late AnimationController _controller26;
  AudioCache Sfxhuruf = AudioCache();
  AudioPlayer audio = AudioPlayer();

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller1.addListener(() {
      setState(() {
        hurufitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        hurufitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        hurufitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        hurufitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        hurufitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        hurufitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        hurufitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        hurufitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        hurufitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        hurufitem10 = _controller10.value;
      });
    });
    _controller11 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller11.addListener(() {
      setState(() {
        hurufitem11 = _controller11.value;
      });
    });
    _controller12 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller12.addListener(() {
      setState(() {
        hurufitem12 = _controller12.value;
      });
    });
    _controller13 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller13.addListener(() {
      setState(() {
        hurufitem13 = _controller13.value;
      });
    });
    _controller14 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller14.addListener(() {
      setState(() {
        hurufitem14 = _controller14.value;
      });
    });
    _controller15 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller15.addListener(() {
      setState(() {
        hurufitem15 = _controller15.value;
      });
    });
    _controller16 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller16.addListener(() {
      setState(() {
        hurufitem16 = _controller16.value;
      });
    });
    _controller17 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller17.addListener(() {
      setState(() {
        hurufitem17 = _controller17.value;
      });
    });
    _controller18 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller18.addListener(() {
      setState(() {
        hurufitem18 = _controller18.value;
      });
    });
    _controller19 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller19.addListener(() {
      setState(() {
        hurufitem19 = _controller19.value;
      });
    });
    _controller20 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller20.addListener(() {
      setState(() {
        hurufitem20 = _controller20.value;
      });
    });
    _controller21 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller21.addListener(() {
      setState(() {
        hurufitem21 = _controller21.value;
      });
    });
    _controller22 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller22.addListener(() {
      setState(() {
        hurufitem22 = _controller22.value;
      });
    });
    _controller23 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller23.addListener(() {
      setState(() {
        hurufitem23 = _controller23.value;
      });
    });
    _controller24 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller24.addListener(() {
      setState(() {
        hurufitem24 = _controller24.value;
      });
    });
    _controller25 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller25.addListener(() {
      setState(() {
        hurufitem25 = _controller25.value;
      });
    });
    _controller26 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller26.addListener(() {
      setState(() {
        hurufitem26 = _controller26.value;
      });
    });

    Sfxhuruf = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  void PlayAudio(url) {
    Sfxhuruf.play(url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/a.mp3');
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
                  scale: hurufitem1,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-01.png',
                    audioUrl: 'a.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/b.mp3');
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
                  scale: hurufitem2,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-02.png',
                    audioUrl: 'b.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/c.mp3');
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
                  scale: hurufitem3,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-03.png',
                    audioUrl: 'c.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/d.mp3');
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
                  scale: hurufitem4,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-04.png',
                    audioUrl: 'd.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/e.mp3');
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
                  scale: hurufitem5,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-05.png',
                    audioUrl: 'e.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/f.mp3');
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
                  scale: hurufitem6,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-06.png',
                    audioUrl: 'f.mp3',
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
                  PlayAudio('audio/BELAJAR/huruf/g.mp3');
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
                  scale: hurufitem7,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-07.png',
                    audioUrl: 'g.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/h.mp3');
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
                  scale: hurufitem8,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-08.png',
                    audioUrl: 'h.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/i.mp3');
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
                  scale: hurufitem9,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-09.png',
                    audioUrl: 'i.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/j.mp3');
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
                  scale: hurufitem10,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-10.png',
                    audioUrl: 'j.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/k.mp3');
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
                  scale: hurufitem11,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-11.png',
                    audioUrl: 'k.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/l.mp3');
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
                  scale: hurufitem12,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-12.png',
                    audioUrl: 'l.mp3',
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
                  PlayAudio('audio/BELAJAR/huruf/m.mp3');
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
                  scale: hurufitem13,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-13.png',
                    audioUrl: 'm.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/n.mp3');
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
                  scale: hurufitem14,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-14.png',
                    audioUrl: 'n.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/o.mp3');
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
                  scale: hurufitem15,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-15.png',
                    audioUrl: 'o.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/p.mp3');
                  setState(() {
                    _controller16.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller16.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem16,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-16.png',
                    audioUrl: 'p.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/q.mp3');
                  setState(() {
                    _controller17.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller17.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem17,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-17.png',
                    audioUrl: 'q.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/r.mp3');
                  setState(() {
                    _controller18.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller18.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem18,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-18.png',
                    audioUrl: 'r.mp3',
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
                  PlayAudio('audio/BELAJAR/huruf/s.mp3');
                  setState(() {
                    _controller19.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller19.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem19,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-19.png',
                    audioUrl: 's.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/t.mp3');
                  setState(() {
                    _controller20.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller20.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem20,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-20.png',
                    audioUrl: 't.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/u.mp3');
                  setState(() {
                    _controller21.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller21.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem21,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-21.png',
                    audioUrl: 'u.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/v.mp3');
                  setState(() {
                    _controller22.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller22.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem22,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-22.png',
                    audioUrl: 'v.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/w.mp3');
                  setState(() {
                    _controller23.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller23.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem23,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-23.png',
                    audioUrl: 'w.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/x.mp3');
                  setState(() {
                    _controller24.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller24.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem24,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-24.png',
                    audioUrl: 'x.mp3',
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
                  PlayAudio('audio/BELAJAR/huruf/y.mp3');
                  setState(() {
                    _controller25.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller25.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem25,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-25.png',
                    audioUrl: 'y.mp3',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/huruf/z.mp3');
                  setState(() {
                    _controller26.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller26.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: hurufitem26,
                  child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-26.png',
                    audioUrl: 'z.mp3',
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
