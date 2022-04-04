import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_buah/belajar_buah.dart';

class Buah extends StatefulWidget {
  const Buah({Key? key}) : super(key: key);

  @override
  State<Buah> createState() => _BuahState();
}

class _BuahState extends State<Buah> with TickerProviderStateMixin {
  var buahitem1 = 1.0;
  var buahitem2 = 1.0;
  var buahitem3 = 1.0;
  var buahitem4 = 1.0;
  var buahitem5 = 1.0;
  var buahitem6 = 1.0;
  var buahitem7 = 1.0;
  var buahitem8 = 1.0;
  var buahitem9 = 1.0;
  var buahitem10 = 1.0;
  var buahitem11 = 1.0;
  var buahitem12 = 1.0;
  var buahitem13 = 1.0;
  var buahitem14 = 1.0;
  var buahitem15 = 1.0;
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
  AudioCache SfxBuah = AudioCache();
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
        buahitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        buahitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        buahitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        buahitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        buahitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        buahitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        buahitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        buahitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        buahitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        buahitem10 = _controller10.value;
      });
    });
    _controller11 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller11.addListener(() {
      setState(() {
        buahitem11 = _controller11.value;
      });
    });
    _controller12 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller12.addListener(() {
      setState(() {
        buahitem12 = _controller12.value;
      });
    });
    _controller13 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller13.addListener(() {
      setState(() {
        buahitem13 = _controller13.value;
      });
    });
    _controller14 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller14.addListener(() {
      setState(() {
        buahitem14 = _controller14.value;
      });
    });
    _controller15 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.4,
        duration: Duration(milliseconds: 300));
    _controller15.addListener(() {
      setState(() {
        buahitem15 = _controller15.value;
      });
    });
    SfxBuah = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxBuah.play('audio/BELAJAR/buah/' + url);
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
                  PlayAudio('ceri.mp3');
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
                  scale: buahitem1,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_07.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('anggur.mp3');
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
                  scale: buahitem2,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_18.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('blueberry.mp3');
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
                  scale: buahitem3,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_31.png',
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
                  PlayAudio('kiwi.mp3');
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
                  scale: buahitem4,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_04.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('mangga.mp3');
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
                  scale: buahitem5,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_23.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('strauberry.mp3');
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
                  scale: buahitem6,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_20.png',
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
                  PlayAudio('pir.mp3');
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
                  scale: buahitem7,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_15.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('jeruk.mp3');
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
                  scale: buahitem8,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_34.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('pepaya.mp3');
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
                  scale: buahitem9,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_28.png',
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
                  PlayAudio('lemon.mp3');
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
                  scale: buahitem10,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_10.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('apel.mp3');
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
                  scale: buahitem11,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_26.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('manggis.mp3');
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
                  scale: buahitem12,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_40.png',
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
                  PlayAudio('semangka.mp3');
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
                  scale: buahitem13,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_12.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('pisang.mp3');
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
                  scale: buahitem14,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_37.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('nanas.mp3');
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
                  scale: buahitem15,
                  child: BuahItem(
                    Imageurl: 'icon_fruit/icon_fruit_01.png',
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
