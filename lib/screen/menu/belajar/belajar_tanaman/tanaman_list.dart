import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/components/shape.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_tanaman/belajar_tanaman.dart';
import 'dart:async';

class Bunga extends StatefulWidget {
  const Bunga({Key? key}) : super(key: key);

  @override
  State<Bunga> createState() => _BungaState();
}

class _BungaState extends State<Bunga> with TickerProviderStateMixin {
  var tanamanitem1 = 1.0;
  var tanamanitem2 = 1.0;
  var tanamanitem3 = 1.0;
  var tanamanitem4 = 1.0;
  var tanamanitem5 = 1.0;
  var tanamanitem6 = 1.0;
  var tanamanitem7 = 1.0;
  var tanamanitem8 = 1.0;
  var tanamanitem9 = 1.0;
  var tanamanitem10 = 1.0;
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

  AudioCache SfxTanaman = AudioCache();
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
        tanamanitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        tanamanitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        tanamanitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        tanamanitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        tanamanitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        tanamanitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        tanamanitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        tanamanitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        tanamanitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        tanamanitem10 = _controller9.value;
      });
    });
    PlayAudio('tanaman-bunga.mp3');
    super.initState();
  }

  PlayAudio(url) {
    SfxTanaman.play('assets/BELAJAR/tanaman/' + url);
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
            width: width / 1.5,
            height: height / 9 / 4,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Tanaman Bunga',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: width / 1.7,
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
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('bunga-anggrek.mp3');
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
                        scale: tanamanitem1,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-anggrek.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('bunga-aster.mp3');
                        setState(() {
                          _controller2.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem2,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-aster.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('bunga-bangkai.mp3');
                        setState(() {
                          _controller3.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem3,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-bangkai.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/tanaman/bunga-kamboja.mp3');
                        setState(() {
                          _controller4.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem4,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-kamboja.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/tanaman/bunga-lili.mp3');
                        setState(() {
                          _controller5.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem5,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-lili.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('bunga-matahari.mp3');
                        setState(() {
                          _controller6.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem6,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-matahari.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/tanaman/bunga-mawar.mp3');
                        setState(() {
                          _controller7.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem7,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-mawar.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('bunga-melati.mp3');
                        setState(() {
                          _controller8.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem8,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-melati.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('audio/BELAJAR/tanaman/bunga-sakura.mp3');
                        setState(() {
                          _controller9.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem9,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-sakura.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.pink.shade100,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('bunga-tulip.mp3');
                        setState(() {
                          _controller10.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem10,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_bunga/icon_tanaman_-tulip.png',
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

class Hias extends StatefulWidget {
  const Hias({Key? key}) : super(key: key);

  @override
  State<Hias> createState() => _HiasState();
}

class _HiasState extends State<Hias> with TickerProviderStateMixin {
  var tanamanitem1 = 1.0;
  var tanamanitem2 = 1.0;
  var tanamanitem3 = 1.0;
  var tanamanitem4 = 1.0;
  var tanamanitem5 = 1.0;
  var tanamanitem6 = 1.0;
  var tanamanitem7 = 1.0;
  var tanamanitem8 = 1.0;
  var tanamanitem9 = 1.0;
  var tanamanitem10 = 1.0;
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

  AudioCache SfxTanaman = AudioCache();
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
        tanamanitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        tanamanitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        tanamanitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        tanamanitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        tanamanitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        tanamanitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        tanamanitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        tanamanitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        tanamanitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        tanamanitem10 = _controller9.value;
      });
    });
    PlayAudio('tanaman-hias.mp3');
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxTanaman.play(url);
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
            width: width / 1.5,
            height: height / 9 / 4,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Tanaman Hias',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: width / 1.7,
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
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('apu-apu.mp3');
                        setState(() {
                          _controller1.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem1,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-apuapu.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('bambu-air.mp3');
                        setState(() {
                          _controller2.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem2,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-bambuair.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('kaktus.mp3');
                        setState(() {
                          _controller3.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem3,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-cactus.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('cemara.mp3');
                        setState(() {
                          _controller4.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem4,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-cemara.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('keladi.mp3');
                        setState(() {
                          _controller5.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem5,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-keladi.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('kolpanda.mp3');
                        setState(() {
                          _controller6.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem6,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-kolbanda.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('pakis-haji.mp3');
                        setState(() {
                          _controller7.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem7,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-pakis_haji.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('palem-merah.mp3');
                        setState(() {
                          _controller8.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem8,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-palemerah.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('puring.mp3');
                        setState(() {
                          _controller9.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem9,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-puring.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.yellow.shade200,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('sansivera.mp3');
                        setState(() {
                          _controller10.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem10,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_hias/icon_tanaman_-sansivera.png',
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

class Obat extends StatefulWidget {
  const Obat({Key? key}) : super(key: key);

  @override
  State<Obat> createState() => _ObatState();
}

class _ObatState extends State<Obat> with TickerProviderStateMixin {
  var tanamanitem1 = 1.0;
  var tanamanitem2 = 1.0;
  var tanamanitem3 = 1.0;
  var tanamanitem4 = 1.0;
  var tanamanitem5 = 1.0;
  var tanamanitem6 = 1.0;
  var tanamanitem7 = 1.0;
  var tanamanitem8 = 1.0;
  var tanamanitem9 = 1.0;
  var tanamanitem10 = 1.0;
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

  AudioCache SfxTanaman = AudioCache();
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
        tanamanitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        tanamanitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        tanamanitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        tanamanitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        tanamanitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        tanamanitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        tanamanitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        tanamanitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        tanamanitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        tanamanitem10 = _controller9.value;
      });
    });
    PlayAudio('tanaman-obat.mp3');
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxTanaman.play(url);
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
            width: width / 1.5,
            height: height / 9 / 4,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Tanaman Obat',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: width / 1.7,
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
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('alang-alang.mp3');
                        setState(() {
                          _controller1.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem1,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_alang_alang.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('jahe.mp3');
                        setState(() {
                          _controller2.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem2,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_jahe.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('kerepeng-cina.mp3');
                        setState(() {
                          _controller3.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem3,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_kerepeng_cina.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('kumis-kucing.mp3');
                        setState(() {
                          _controller4.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem4,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_kumis_kucing.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('kunyit.mp3');
                        setState(() {
                          _controller5.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem5,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_kunyit.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('lengkuas.mp3');
                        setState(() {
                          _controller6.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem6,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_lengkuas.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('lidah-buaya.mp3');
                        setState(() {
                          _controller7.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem7,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_lidah_buaya.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('mengkudu.mp3');
                        setState(() {
                          _controller8.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem8,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_mengkudu.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('mint.mp3');
                        setState(() {
                          _controller9.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem9,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_mint.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightBlue.shade400,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('rosela.mp3');
                        setState(() {
                          _controller10.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem10,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_obat/icon_tanaman_rosela.png',
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

class Pangan extends StatefulWidget {
  const Pangan({Key? key}) : super(key: key);

  @override
  State<Pangan> createState() => _PanganState();
}

class _PanganState extends State<Pangan> with TickerProviderStateMixin {
  var tanamanitem1 = 1.0;
  var tanamanitem2 = 1.0;
  var tanamanitem3 = 1.0;
  var tanamanitem4 = 1.0;
  var tanamanitem5 = 1.0;
  var tanamanitem6 = 1.0;
  var tanamanitem7 = 1.0;
  var tanamanitem8 = 1.0;
  var tanamanitem9 = 1.0;
  var tanamanitem10 = 1.0;
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

  AudioCache SfxTanaman = AudioCache();
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
        tanamanitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        tanamanitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        tanamanitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        tanamanitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        tanamanitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        tanamanitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        tanamanitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        tanamanitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        tanamanitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        tanamanitem10 = _controller9.value;
      });
    });
    PlayAudio('tanaman-pangan.mp3');
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxTanaman.play(url);
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
            width: width / 1.5,
            height: height / 9 / 4,
            color: Colors.indigo.shade900,
            child: Center(
              child: Text(
                'Tanaman Pangan',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            width: width / 1.7,
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
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('brokoli.mp3');
                        setState(() {
                          _controller1.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem1,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_brokoli.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('gandum.mp3');
                        setState(() {
                          _controller2.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem2,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_gandum.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('jagung.mp3');
                        setState(() {
                          _controller3.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem3,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_jagung.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('kelapa.mp3');
                        setState(() {
                          _controller4.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem4,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_kelapa.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('ketela.mp3');
                        setState(() {
                          _controller5.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem5,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_ketela.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('kubis.mp3');
                        setState(() {
                          _controller6.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem6,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_kol.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('padi.mp3');
                        setState(() {
                          _controller7.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem7,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_padi.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('pepaya.mp3');
                        setState(() {
                          _controller8.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem8,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_pepaya.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('pisang.mp3');
                        setState(() {
                          _controller9.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem9,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_pisang.png',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.lightGreen.shade300,
                    child: GestureDetector(
                      onTap: () {
                        PlayAudio('sawi.mp3');
                        setState(() {
                          _controller10.forward(from: 0.0);
                        });
                        Timer(Duration(seconds: 1), () {
                          setState(() {});
                        });
                      },
                      child: Transform.scale(
                        scale: tanamanitem10,
                        child: TanamanItem(
                          Imageurl:
                              'icon_tanaman/icon_tanaman_pangan/icon_tanaman_sawi.png',
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
