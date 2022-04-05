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
  var hurufitem1 = 1.0;
  var hurufitem2 = 1.0;
  var hurufitem3 = 1.0;
  var hurufitem4 = 1.0;
  var hurufitem5 = 1.0;
  var hurufitem6 = 1.0;
  var hurufitem7 = 1.0;
  var hurufitem8 = 1.0;
  var hurufitem9 = 1.0;
  var hurufitem10 = 1.0;
  var hurufitem11 = 1.0;
  var hurufitem12 = 1.0;
  var hurufitem13 = 1.0;
  var hurufitem14 = 1.0;
  var hurufitem15 = 1.0;
  var hurufitem16 = 1.0;
  var hurufitem17 = 1.0;
  var hurufitem18 = 1.0;
  var hurufitem19 = 1.0;
  var hurufitem20 = 1.0;
  var hurufitem21 = 1.0;
  var hurufitem22 = 1.0;
  var hurufitem23 = 1.0;
  var hurufitem24 = 1.0;
  var hurufitem25 = 1.0;
  var hurufitem26 = 1.0;
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
  AudioCache SfxHuruf = AudioCache();
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
        hurufitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        hurufitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        hurufitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        hurufitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        hurufitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        hurufitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        hurufitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        hurufitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        hurufitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        hurufitem10 = _controller10.value;
      });
    });
    _controller11 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller11.addListener(() {
      setState(() {
        hurufitem11 = _controller11.value;
      });
    });
    _controller12 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller12.addListener(() {
      setState(() {
        hurufitem12 = _controller12.value;
      });
    });
    _controller13 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller13.addListener(() {
      setState(() {
        hurufitem13 = _controller13.value;
      });
    });
    _controller14 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller14.addListener(() {
      setState(() {
        hurufitem14 = _controller14.value;
      });
    });
    _controller15 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller15.addListener(() {
      setState(() {
        hurufitem15 = _controller15.value;
      });
    });
    _controller16 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller16.addListener(() {
      setState(() {
        hurufitem16 = _controller16.value;
      });
    });
    _controller17 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller17.addListener(() {
      setState(() {
        hurufitem17 = _controller17.value;
      });
    });
    _controller18 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller18.addListener(() {
      setState(() {
        hurufitem18 = _controller18.value;
      });
    });
    _controller19 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller19.addListener(() {
      setState(() {
        hurufitem19 = _controller19.value;
      });
    });
    _controller20 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller20.addListener(() {
      setState(() {
        hurufitem20 = _controller20.value;
      });
    });
    _controller21 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller21.addListener(() {
      setState(() {
        hurufitem21 = _controller21.value;
      });
    });
    _controller22 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller22.addListener(() {
      setState(() {
        hurufitem22 = _controller22.value;
      });
    });
    _controller23 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller23.addListener(() {
      setState(() {
        hurufitem23 = _controller23.value;
      });
    });
    _controller24 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller24.addListener(() {
      setState(() {
        hurufitem24 = _controller24.value;
      });
    });
    _controller25 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller25.addListener(() {
      setState(() {
        hurufitem25 = _controller25.value;
      });
    });
    _controller26 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller26.addListener(() {
      setState(() {
        hurufitem26 = _controller26.value;
      });
    });

    SfxHuruf = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  void PlayAudio(url) {
    SfxHuruf.play(url);
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();
    _controller9.dispose();
    _controller10.dispose();
    _controller11.dispose();
    _controller12.dispose();
    _controller13.dispose();
    _controller14.dispose();
    _controller15.dispose();
    _controller16.dispose();
    _controller17.dispose();
    _controller18.dispose();
    _controller19.dispose();
    _controller20.dispose();
    _controller21.dispose();
    _controller22.dispose();
    _controller23.dispose();
    _controller24.dispose();
    _controller25.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Row(children: [
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-01.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/b.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-02.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/c.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-03.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/d.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-04.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/e.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-05.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/f.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-06.png',
                ),
              ),
            ),
          ),
        ]),
        Row(children: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/g.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-07.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/h.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-08.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/i.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-09.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/j.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-10.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/k.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-11.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/l.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-12.png',
                ),
              ),
            ),
          ),
        ]),
        Row(children: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/m.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-13.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/n.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-14.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/o.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-15.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/p.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-16.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/q.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-17.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/r.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-18.png',
                ),
              ),
            ),
          ),
        ]),
        Row(children: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/s.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-19.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/t.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-20.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/u.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-21.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/v.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-22.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/w.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-23.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/x.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_big/icon_alfabet_-24.png',
                ),
              ),
            ),
          ),
        ]),
        Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    PlayAudio('audio/BELAJAR/huruf/y.mp3');
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
                    imageurl:
                        'icon_alfabet/icon_alfabet_big/icon_alfabet_-25.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    PlayAudio('audio/BELAJAR/huruf/z.mp3');
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
                    imageurl:
                        'icon_alfabet/icon_alfabet_big/icon_alfabet_-26.png',
                  ),
                ),
              ),
            ),
            Flexible(child: Container()),
            Flexible(child: Container()),
            Flexible(child: Container()),
            Flexible(child: Container()),
          ],
        ),
      ],
    ));
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  var hurufitem1 = 1.0;
  var hurufitem2 = 1.0;
  var hurufitem3 = 1.0;
  var hurufitem4 = 1.0;
  var hurufitem5 = 1.0;
  var hurufitem6 = 1.0;
  var hurufitem7 = 1.0;
  var hurufitem8 = 1.0;
  var hurufitem9 = 1.0;
  var hurufitem10 = 1.0;
  var hurufitem11 = 1.0;
  var hurufitem12 = 1.0;
  var hurufitem13 = 1.0;
  var hurufitem14 = 1.0;
  var hurufitem15 = 1.0;
  var hurufitem16 = 1.0;
  var hurufitem17 = 1.0;
  var hurufitem18 = 1.0;
  var hurufitem19 = 1.0;
  var hurufitem20 = 1.0;
  var hurufitem21 = 1.0;
  var hurufitem22 = 1.0;
  var hurufitem23 = 1.0;
  var hurufitem24 = 1.0;
  var hurufitem25 = 1.0;
  var hurufitem26 = 1.0;
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
  AudioCache SfxHuruf = AudioCache();
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
        hurufitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        hurufitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        hurufitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        hurufitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        hurufitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        hurufitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        hurufitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        hurufitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        hurufitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        hurufitem10 = _controller10.value;
      });
    });
    _controller11 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller11.addListener(() {
      setState(() {
        hurufitem11 = _controller11.value;
      });
    });
    _controller12 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller12.addListener(() {
      setState(() {
        hurufitem12 = _controller12.value;
      });
    });
    _controller13 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller13.addListener(() {
      setState(() {
        hurufitem13 = _controller13.value;
      });
    });
    _controller14 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller14.addListener(() {
      setState(() {
        hurufitem14 = _controller14.value;
      });
    });
    _controller15 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller15.addListener(() {
      setState(() {
        hurufitem15 = _controller15.value;
      });
    });
    _controller16 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller16.addListener(() {
      setState(() {
        hurufitem16 = _controller16.value;
      });
    });
    _controller17 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller17.addListener(() {
      setState(() {
        hurufitem17 = _controller17.value;
      });
    });
    _controller18 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller18.addListener(() {
      setState(() {
        hurufitem18 = _controller18.value;
      });
    });
    _controller19 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller19.addListener(() {
      setState(() {
        hurufitem19 = _controller19.value;
      });
    });
    _controller20 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(seconds: 1));
    _controller20.addListener(() {
      setState(() {
        hurufitem20 = _controller20.value;
      });
    });
    _controller21 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller21.addListener(() {
      setState(() {
        hurufitem21 = _controller21.value;
      });
    });
    _controller22 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller22.addListener(() {
      setState(() {
        hurufitem22 = _controller22.value;
      });
    });
    _controller23 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller23.addListener(() {
      setState(() {
        hurufitem23 = _controller23.value;
      });
    });
    _controller24 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller24.addListener(() {
      setState(() {
        hurufitem24 = _controller24.value;
      });
    });
    _controller25 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller25.addListener(() {
      setState(() {
        hurufitem25 = _controller25.value;
      });
    });
    _controller26 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller26.addListener(() {
      setState(() {
        hurufitem26 = _controller26.value;
      });
    });

    SfxHuruf = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  void PlayAudio(url) {
    SfxHuruf.play(url);
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();
    _controller9.dispose();
    _controller10.dispose();
    _controller11.dispose();
    _controller12.dispose();
    _controller13.dispose();
    _controller14.dispose();
    _controller15.dispose();
    _controller16.dispose();
    _controller17.dispose();
    _controller18.dispose();
    _controller19.dispose();
    _controller20.dispose();
    _controller21.dispose();
    _controller22.dispose();
    _controller23.dispose();
    _controller24.dispose();
    _controller25.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Row(children: [
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--01.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/b.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--02.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/c.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--03.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/d.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--04.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/e.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--05.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/f.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--06.png',
                ),
              ),
            ),
          ),
        ]),
        Row(children: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/g.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--07.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/h.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--08.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/i.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--09.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/j.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--10.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/k.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--11.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/l.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--12.png',
                ),
              ),
            ),
          ),
        ]),
        Row(children: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/m.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--13.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/n.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--14.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/o.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--15.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/p.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--16.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/q.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--17.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/r.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--18.png',
                ),
              ),
            ),
          ),
        ]),
        Row(children: [
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/s.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--19.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/t.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--20.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/u.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--21.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/v.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--22.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/w.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--23.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  PlayAudio('audio/BELAJAR/huruf/x.mp3');
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
                  imageurl:
                      'icon_alfabet/icon_alfabet_small/icon_alfabet_small--24.png',
                ),
              ),
            ),
          ),
        ]),
        Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    PlayAudio('audio/BELAJAR/huruf/y.mp3');
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
                    imageurl:
                        'icon_alfabet/icon_alfabet_small/icon_alfabet_small--25.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    PlayAudio('audio/BELAJAR/huruf/z.mp3');
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
                    imageurl:
                        'icon_alfabet/icon_alfabet_small/icon_alfabet_small--26.png',
                  ),
                ),
              ),
            ),
            Flexible(child: Container()),
            Flexible(child: Container()),
            Flexible(child: Container()),
            Flexible(child: Container()),
          ],
        ),
      ],
    ));
  }
}
