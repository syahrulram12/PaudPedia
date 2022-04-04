import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_html/html_parser.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_bentuk/belajar_bentuk.dart';

class Bentuk extends StatefulWidget {
  const Bentuk({Key? key}) : super(key: key);

  @override
  State<Bentuk> createState() => _BentukState();
}

class _BentukState extends State<Bentuk> with TickerProviderStateMixin {
  var bentukitem1 = 1.0;
  var bentukitem2 = 1.0;
  var bentukitem3 = 1.0;
  var bentukitem4 = 1.0;
  var bentukitem5 = 1.0;
  var bentukitem6 = 1.0;
  var bentukitem7 = 1.0;
  var bentukitem8 = 1.0;
  var bentukitem9 = 1.0;
  var bentukitem10 = 1.0;
  var bentukitem11 = 1.0;
  var bentukitem12 = 1.0;
  var bentukitem13 = 1.0;
  var bentukitem14 = 1.0;
  var bentukitem15 = 1.0;
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
  AudioCache SfxBentuk = AudioCache();
  AudioPlayer audio = AudioPlayer();

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller1.addListener(() {
      setState(() {
        bentukitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        bentukitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        bentukitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        bentukitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        bentukitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        bentukitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        bentukitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        bentukitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        bentukitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        bentukitem10 = _controller10.value;
      });
    });
    _controller11 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        bentukitem11 = _controller11.value;
      });
    });
    _controller12 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller12.addListener(() {
      setState(() {
        bentukitem12 = _controller12.value;
      });
    });
    _controller13 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller13.addListener(() {
      setState(() {
        bentukitem13 = _controller13.value;
      });
    });
    _controller14 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller14.addListener(() {
      setState(() {
        bentukitem14 = _controller14.value;
      });
    });
    _controller15 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.3,
        duration: Duration(milliseconds: 300));
    _controller15.addListener(() {
      setState(() {
        bentukitem15 = _controller15.value;
      });
    });

    SfxBentuk = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxBentuk.play('audio/BELAJAR/bentuk/' + url);
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Wrap(
      direction: Axis.horizontal,
      children: [
        Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('bujur-sangkar.mp3');
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
                  scale: bentukitem1,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_box.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('persegi-panjang.mp3');
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
                  scale: bentukitem2,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_rectangle.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('lingkaran.mp3');
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
                  scale: bentukitem3,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_circle.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('oval.mp3');
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
                  scale: bentukitem4,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_oval.png',
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
                  PlayAudio('segi-tiga.mp3');
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
                  scale: bentukitem5,
                  child: BentukItem(
                    Imageurl: 'icon_shape/triangle.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('segi-lima.mp3');
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
                  scale: bentukitem6,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_pentagon.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('segi-enam.mp3');
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
                  scale: bentukitem7,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_hexagon.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('segi-delapan.mp3');
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
                  scale: bentukitem8,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_octagonal.png',
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
                  PlayAudio('jajar-genjang.mp3');
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
                  scale: bentukitem9,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_parallelogram.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('belah-ketupat.mp3');
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
                  scale: bentukitem10,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_rhombus.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('trapesium.mp3');
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
                  scale: bentukitem11,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_trapezoid.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('bulan.mp3');
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
                  scale: bentukitem12,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_moon.png',
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
                  PlayAudio('hati.mp3');
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
                  scale: bentukitem13,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_love.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('bintang.mp3');
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
                  scale: bentukitem14,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_star.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('panah.mp3');
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
                  scale: bentukitem15,
                  child: BentukItem(
                    Imageurl: 'icon_shape/icon_arrow.png',
                  ),
                ),
              ),
            ),
            Flexible(child: Container())
          ],
        ),
      ],
    ));
  }
}
