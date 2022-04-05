import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/components/shape.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_benda/belajar_benda.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with TickerProviderStateMixin {
  var bendaitem1 = 1.0;
  var bendaitem2 = 1.0;
  var bendaitem3 = 1.0;
  var bendaitem4 = 1.0;
  var bendaitem5 = 1.0;
  var bendaitem6 = 1.0;
  var bendaitem7 = 1.0;
  var bendaitem8 = 1.0;
  var bendaitem9 = 1.0;
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;
  late AnimationController _controller5;
  late AnimationController _controller6;
  late AnimationController _controller7;
  late AnimationController _controller8;
  late AnimationController _controller9;

  AudioCache SfxBenda = AudioCache();
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
        bendaitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        bendaitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        bendaitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        bendaitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        bendaitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        bendaitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        bendaitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        bendaitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        bendaitem9 = _controller9.value;
      });
    });

    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxBenda.play(url);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 300,
            height: 25,
            color: Colors.yellow.shade700,
            child: Center(
              child: Text(
                'Kamar Tidur',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: width / 1.5,
            height: height / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 20),
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              children: <Widget>[
                Container(
                    color: Colors.lightBlue.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/teropong-bintang.mp3');
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
                        scale: bendaitem1,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bedroom/icon_object_bedroom-10.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/lampu-belajar.mp3');
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
                        scale: bendaitem2,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bedroom/icon_object_bedroom-02.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/bantal.mp3');
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
                        scale: bendaitem3,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bedroom/icon_object_bedroom-03.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/kasur.mp3');
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
                          scale: bendaitem4,
                          child: BendaItem(
                            Imageurl:
                                'icon_object/bedroom/icon_object_bedroom-04.png',
                          )),
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/kursi.mp3');
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
                        scale: bendaitem5,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bedroom/icon_object_bedroom-05.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/mobil-mobilan.mp3');
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
                        scale: bendaitem6,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bedroom/icon_object_bedroom-06.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/lemari.mp3');
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
                        scale: bendaitem7,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bedroom/icon_object_bedroom-07.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/bola.mp3');
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
                        scale: bendaitem8,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bedroom/icon_object_bedroom-08.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/keranjang-bola.mp3');
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
                        scale: bendaitem9,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bedroom/icon_object_bedroom-09.png',
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  var bendaitem1 = 1.0;
  var bendaitem2 = 1.0;
  var bendaitem3 = 1.0;
  var bendaitem4 = 1.0;
  var bendaitem5 = 1.0;
  var bendaitem6 = 1.0;
  var bendaitem7 = 1.0;
  var bendaitem8 = 1.0;
  var bendaitem9 = 1.0;
  var bendaitem10 = 1.0;
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
  AudioCache SfxBenda = AudioCache();
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
        bendaitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        bendaitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        bendaitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        bendaitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        bendaitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        bendaitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        bendaitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        bendaitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        bendaitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        bendaitem10 = _controller10.value;
      });
    });
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxBenda.play(url);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: width / 1,
            height: height / 9 / 4,
            color: Colors.yellow.shade700,
            child: Center(
              child: Text(
                'Kamar Mandi',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: width / 1.5,
            height: height / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 20),
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              children: <Widget>[
                Container(
                    color: Colors.yellow.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/pancuran-air.mp3');
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
                        scale: bendaitem1,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bathroom/icon_object_bathroom-01.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/sikat-gigi.mp3');
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
                        scale: bendaitem2,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bathroom/icon_object_bathroom-02.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/handuk-kecil.mp3');
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
                        scale: bendaitem3,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bathroom/icon_object_bathroom-03.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/tisu-toilet.mp3');
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
                          scale: bendaitem4,
                          child: BendaItem(
                            Imageurl:
                                'icon_object/bathroom/icon_object_bathroom-04.png',
                          )),
                    )),
                Container(
                    color: Colors.yellow.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/ember.mp3');
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
                        scale: bendaitem5,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bathroom/icon_object_bathroom-05.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/sabun.mp3');
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
                        scale: bendaitem6,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bathroom/icon_object_bathroom-06.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/sikat-lantai.mp3');
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
                        scale: bendaitem7,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bathroom/icon_object_bathroom-07.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/sampo.mp3');
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
                        scale: bendaitem8,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bathroom/icon_object_bathroom-08.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade700,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/cermin.mp3');
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
                        scale: bendaitem9,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/bathroom/icon_object_bathroom-09.png',
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> with TickerProviderStateMixin {
  var bendaitem1 = 1.0;
  var bendaitem2 = 1.0;
  var bendaitem3 = 1.0;
  var bendaitem4 = 1.0;
  var bendaitem5 = 1.0;
  var bendaitem6 = 1.0;
  var bendaitem7 = 1.0;
  var bendaitem8 = 1.0;
  var bendaitem9 = 1.0;
  var bendaitem10 = 1.0;
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
  AudioCache SfxBenda = AudioCache();
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
        bendaitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        bendaitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        bendaitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        bendaitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        bendaitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        bendaitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        bendaitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        bendaitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        bendaitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        bendaitem10 = _controller10.value;
      });
    });
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxBenda.play(url);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 300,
            height: 25,
            color: Colors.yellow.shade700,
            child: Center(
              child: Text(
                'Dapur',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: width / 1.5,
            height: height / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 20),
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              children: <Widget>[
                Container(
                    color: Colors.pink.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/mangkok.mp3');
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
                        scale: bendaitem1,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/kitchen/icon_object_kitchen-01.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/gelas.mp3');
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
                        scale: bendaitem2,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/kitchen/icon_object_kitchen-02.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/sodet.mp3');
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
                        scale: bendaitem3,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/kitchen/icon_object_kitchen-03.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/pisau.mp3');
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
                          scale: bendaitem4,
                          child: BendaItem(
                            Imageurl:
                                'icon_object/kitchen/icon_object_kitchen-04.png',
                          )),
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/wajan.mp3');
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
                        scale: bendaitem5,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/kitchen/icon_object_kitchen-05.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/panci.mp3');
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
                        scale: bendaitem6,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/kitchen/icon_object_kitchen-06.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/talenan.mp3');
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
                        scale: bendaitem7,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/kitchen/icon_object_kitchen-07.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/teko.mp3');
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
                        scale: bendaitem8,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/kitchen/icon_object_kitchen-08.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/benda/sapu.mp3');
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
                        scale: bendaitem9,
                        child: BendaItem(
                          Imageurl:
                              'icon_object/kitchen/icon_object_kitchen-09.png',
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
