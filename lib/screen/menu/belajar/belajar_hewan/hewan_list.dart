import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/components/shape.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_hewan/belajar_hewan.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with TickerProviderStateMixin {
  var hewanitem1 = 1.0;
  var hewanitem2 = 1.0;
  var hewanitem3 = 1.0;
  var hewanitem4 = 1.0;
  var hewanitem5 = 1.0;
  var hewanitem6 = 1.0;
  var hewanitem7 = 1.0;
  var hewanitem8 = 1.0;
  var hewanitem9 = 1.0;
  var hewanitem10 = 1.0;
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

  AudioCache SfxHewan = AudioCache();
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
        hewanitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        hewanitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        hewanitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        hewanitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        hewanitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        hewanitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        hewanitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        hewanitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        hewanitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        hewanitem10 = _controller10.value;
      });
    });

    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxHewan.play(url);
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
                'Langka',
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
                      PlayAudio('audio/BELAJAR/fauna/anoa.mp3');
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
                      scale: hewanitem1,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-01.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink.shade100,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/bekantan.mp3');
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
                      scale: hewanitem2,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-02.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink.shade100,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/beruang-madu.mp3');
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
                      scale: hewanitem3,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-03.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink.shade100,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/jalak-bali.mp3');
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
                      scale: hewanitem4,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-04.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink.shade100,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/enggang-gading.mp3');
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
                      scale: hewanitem5,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-05.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink.shade100,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/maleo-sengkawor.mp3');
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
                      scale: hewanitem6,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-06.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink.shade100,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/mandar-dengkur.mp3');
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
                      scale: hewanitem7,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-07.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink.shade100,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/mentilin.mp3');
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
                      scale: hewanitem8,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-08.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink.shade100,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/pesut-mahakam.mp3');
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
                      scale: hewanitem9,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-09.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.pink.shade100,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/rusa-timor.mp3');
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
                      scale: hewanitem9,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_langka/icon_hewan-10.png',
                      ),
                    ),
                  ),
                ),
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
  var hewanitem1 = 1.0;
  var hewanitem2 = 1.0;
  var hewanitem3 = 1.0;
  var hewanitem4 = 1.0;
  var hewanitem5 = 1.0;
  var hewanitem6 = 1.0;
  var hewanitem7 = 1.0;
  var hewanitem8 = 1.0;
  var hewanitem9 = 1.0;
  var hewanitem10 = 1.0;
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

  AudioCache SfxHewan = AudioCache();
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
        hewanitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        hewanitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        hewanitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        hewanitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        hewanitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        hewanitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        hewanitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        hewanitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        hewanitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        hewanitem10 = _controller10.value;
      });
    });

    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxHewan.play(url);
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
                'Hutan',
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
                      PlayAudio('audio/BELAJAR/fauna/koala.mp3');
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
                      scale: hewanitem1,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-11.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/citah.mp3');
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
                      scale: hewanitem2,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-12.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/tupai.mp3');
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
                      scale: hewanitem3,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-13.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/laba-laba.mp3');
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
                      scale: hewanitem4,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-14.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/rubah.mp3');
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
                      scale: hewanitem5,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-15.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/berang-berang.mp3');
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
                      scale: hewanitem6,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-16.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/monyet.mp3');
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
                      scale: hewanitem7,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-17.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/katak.mp3');
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
                      scale: hewanitem8,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-18.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/rakun.mp3');
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
                      scale: hewanitem9,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-19.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow.shade200,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/tikus.mp3');
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
                      scale: hewanitem10,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_hutan/icon_hewan-20.png',
                      ),
                    ),
                  ),
                ),
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
  var hewanitem1 = 1.0;
  var hewanitem2 = 1.0;
  var hewanitem3 = 1.0;
  var hewanitem4 = 1.0;
  var hewanitem5 = 1.0;
  var hewanitem6 = 1.0;
  var hewanitem7 = 1.0;
  var hewanitem8 = 1.0;
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;
  late AnimationController _controller5;
  late AnimationController _controller6;
  late AnimationController _controller7;
  late AnimationController _controller8;

  AudioCache SfxHewan = AudioCache();
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
        hewanitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        hewanitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        hewanitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        hewanitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        hewanitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        hewanitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        hewanitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        hewanitem8 = _controller8.value;
      });
    });

    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxHewan.play(url);
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
                'Ikan Hias',
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
                      PlayAudio('audio/BELAJAR/fauna/ikan-arwana.mp3');
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
                      scale: hewanitem1,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_ikan_hias/icon_hewan-21.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightBlue.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/ikan-badut.mp3');
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
                      scale: hewanitem2,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_ikan_hias/icon_hewan-22.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightBlue.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/ikan-gupi.mp3');
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
                      scale: hewanitem3,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_ikan_hias/icon_hewan-23.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightBlue.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/ikan-disjus.mp3');
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
                      scale: hewanitem4,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_ikan_hias/icon_hewan-24.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightBlue.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/ikan-cupang.mp3');
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
                      scale: hewanitem5,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_ikan_hias/icon_hewan-25.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightBlue.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/ikan-koki.mp3');
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
                      scale: hewanitem6,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_ikan_hias/icon_hewan-26.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightBlue.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/ikan-koi.mp3');
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
                      scale: hewanitem7,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_ikan_hias/icon_hewan-27.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightBlue.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/ikan-lauhan.mp3');
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
                      scale: hewanitem8,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_ikan_hias/icon_hewan-28.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> with TickerProviderStateMixin {
  var hewanitem1 = 1.0;
  var hewanitem2 = 1.0;
  var hewanitem3 = 1.0;
  var hewanitem4 = 1.0;
  var hewanitem5 = 1.0;
  var hewanitem6 = 1.0;
  var hewanitem7 = 1.0;
  var hewanitem8 = 1.0;
  var hewanitem9 = 1.0;
  var hewanitem10 = 1.0;
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

  AudioCache SfxHewan = AudioCache();
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
        hewanitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller2.addListener(() {
      setState(() {
        hewanitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        hewanitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller4.addListener(() {
      setState(() {
        hewanitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        hewanitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller6.addListener(() {
      setState(() {
        hewanitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        hewanitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller8.addListener(() {
      setState(() {
        hewanitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        hewanitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller10.addListener(() {
      setState(() {
        hewanitem10 = _controller10.value;
      });
    });

    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxHewan.play(url);
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
                'Laut',
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
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/kepiting.mp3');
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
                      scale: hewanitem1,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-29.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/kuda-laut.mp3');
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
                      scale: hewanitem2,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-30.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/lumba-lumba.mp3');
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
                      scale: hewanitem3,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-31.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/paus.mp3');
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
                      scale: hewanitem4,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-32.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/gurita.mp3');
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
                      scale: hewanitem5,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-33.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/udang.mp3');
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
                      scale: hewanitem6,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-34.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/penyu.mp3');
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
                      scale: hewanitem7,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-35.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/singa-laut.mp3');
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
                      scale: hewanitem8,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-36.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/kerang.mp3');
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
                      scale: hewanitem9,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-37.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen.shade400,
                  child: GestureDetector(
                    onTap: () {
                      PlayAudio('audio/BELAJAR/fauna/anjing-laut.mp3');
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
                      scale: hewanitem10,
                      child: HewanItem(
                        Imageurl:
                            'icon_hewan/icon_hewan_laut/icon_hewan-38.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
