import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/BELAJAR/BELAJAR_angka/BELAJAR_angka.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> with TickerProviderStateMixin {
  var angkaitem1 = 0.8;
  var angkaitem2 = 0.8;
  var angkaitem3 = 0.8;
  var angkaitem4 = 0.8;
  var angkaitem5 = 0.8;
  var angkaitem6 = 0.8;
  var angkaitem7 = 0.8;
  var angkaitem8 = 0.8;
  var angkaitem9 = 0.8;
  var angkaitem10 = 0.8;
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
  AudioCache SfxAngka = AudioCache();
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
        angkaitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller2.addListener(() {
      setState(() {
        angkaitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        angkaitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller4.addListener(() {
      setState(() {
        angkaitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        angkaitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller6.addListener(() {
      setState(() {
        angkaitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        angkaitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller8.addListener(() {
      setState(() {
        angkaitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        angkaitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.2,
        duration: Duration(seconds: 1));
    _controller10.addListener(() {
      setState(() {
        angkaitem10 = _controller10.value;
      });
    });

    SfxAngka = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  void PlayAudio(url) {
    SfxAngka.play(url);
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
                PlayAudio('audio/BELAJAR/angka/1.mp3');
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
                scale: angkaitem1,
                child: AngkaItem(
                  Imageurl: 'icon_number/icon_1-10/icon_1-10-01.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
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
                scale: angkaitem2,
                child: AngkaItem(
                  Imageurl: 'icon_number/icon_1-10/icon_1-10-02.png',
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
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
                scale: angkaitem3,
                child: AngkaItem(
                  Imageurl: 'icon_number/icon_1-10/icon_1-10-03.png',
                ),
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
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
                    scale: angkaitem4,
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-04.png',
                    ),
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
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
                    scale: angkaitem5,
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-05.png',
                    ),
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
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
                    scale: angkaitem6,
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-06.png',
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
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
                        scale: angkaitem7,
                        child: AngkaItem(
                          Imageurl: 'icon_number/icon_1-10/icon_1-10-07.png',
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
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
                        scale: angkaitem8,
                        child: AngkaItem(
                          Imageurl: 'icon_number/icon_1-10/icon_1-10-08.png',
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
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
                        scale: angkaitem9,
                        child: AngkaItem(
                          Imageurl: 'icon_number/icon_1-10/icon_1-10-09.png',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(child: Container()),
                      Flexible(
                        child: GestureDetector(
                          onTap: () {
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
                            scale: angkaitem10,
                            child: AngkaItem(
                              Imageurl:
                                  'icon_number/icon_1-10/icon_1-10-10.png',
                            ),
                          ),
                        ),
                      ),
                      Flexible(child: Container())
                    ],
                  ),
                ],
              )
            ],
          )
        ])
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
  var angkaitem1 = 1.0;
  var angkaitem2 = 1.0;
  var angkaitem3 = 1.0;
  var angkaitem4 = 1.0;
  var angkaitem5 = 1.0;
  var angkaitem6 = 1.0;
  var angkaitem7 = 1.0;
  var angkaitem8 = 1.0;
  var angkaitem9 = 1.0;
  var angkaitem10 = 1.0;
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
  AudioCache SfxAngka = AudioCache();
  AudioPlayer audio = AudioPlayer();

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller1.addListener(() {
      setState(() {
        angkaitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller2.addListener(() {
      setState(() {
        angkaitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        angkaitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller4.addListener(() {
      setState(() {
        angkaitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        angkaitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller6.addListener(() {
      setState(() {
        angkaitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        angkaitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller8.addListener(() {
      setState(() {
        angkaitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        angkaitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller10.addListener(() {
      setState(() {
        angkaitem10 = _controller10.value;
      });
    });
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxAngka.play(url);
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
    super.dispose();
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
                  PlayAudio('audio/BELAJAR/angka/11.mp3');
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
                  scale: angkaitem1,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-11.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/12.mp3');
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
                  scale: angkaitem2,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-12.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/13.mp3');
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
                  scale: angkaitem3,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-13.png',
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
                  PlayAudio('audio/BELAJAR/angka/14.mp3');
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
                  scale: angkaitem4,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-14.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/15.mp3');
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
                  scale: angkaitem5,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-15.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/16.mp3');
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
                  scale: angkaitem6,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-16.png',
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
                  PlayAudio('audio/BELAJAR/angka/17.mp3');
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
                  scale: angkaitem7,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-17.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    PlayAudio('audio/BELAJAR/angka/18.mp3');
                    _controller8.forward(from: 0.0);
                  });
                  Timer(Duration(seconds: 1), () {
                    setState(() {
                      _controller8.reverse();
                    });
                  });
                },
                child: Transform.scale(
                  scale: angkaitem8,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-18.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/19.mp3');
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
                  scale: angkaitem9,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-19.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/20.mp3');
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
                  scale: angkaitem10,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-20.png',
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

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> with TickerProviderStateMixin {
  var angkaitem1 = 1.0;
  var angkaitem2 = 1.0;
  var angkaitem3 = 1.0;
  var angkaitem4 = 1.0;
  var angkaitem5 = 1.0;
  var angkaitem6 = 1.0;
  var angkaitem7 = 1.0;
  var angkaitem8 = 1.0;
  var angkaitem9 = 1.0;
  var angkaitem10 = 1.0;
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
  AudioCache SfxAngka = AudioCache();
  AudioPlayer audio = AudioPlayer();

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller1.addListener(() {
      setState(() {
        angkaitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller2.addListener(() {
      setState(() {
        angkaitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        angkaitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller4.addListener(() {
      setState(() {
        angkaitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        angkaitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller6.addListener(() {
      setState(() {
        angkaitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        angkaitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller8.addListener(() {
      setState(() {
        angkaitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        angkaitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller10.addListener(() {
      setState(() {
        angkaitem10 = _controller10.value;
      });
    });

    SfxAngka = AudioCache(fixedPlayer: audio);

    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxAngka.play(url);
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
    super.dispose();
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
                  PlayAudio('audio/BELAJAR/angka/21.mp3');
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
                  scale: angkaitem1,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-21.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/22.mp3');
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
                  scale: angkaitem2,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-22.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/23.mp3');
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
                  scale: angkaitem3,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-23.png',
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
                  PlayAudio('audio/BELAJAR/angka/24.mp3');
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
                  scale: angkaitem4,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-24.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/25.mp3');
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
                  scale: angkaitem5,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-25.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/26.mp3');
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
                  scale: angkaitem6,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-26.png',
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
                  PlayAudio('audio/BELAJAR/angka/27.mp3');
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
                  scale: angkaitem7,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-27.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/28.mp3');
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
                  scale: angkaitem8,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-28.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/29.mp3');
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
                  scale: angkaitem9,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-29.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/30.mp3');
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
                  scale: angkaitem10,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-30.png',
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

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> with TickerProviderStateMixin {
  var angkaitem1 = 1.0;
  var angkaitem2 = 1.0;
  var angkaitem3 = 1.0;
  var angkaitem4 = 1.0;
  var angkaitem5 = 1.0;
  var angkaitem6 = 1.0;
  var angkaitem7 = 1.0;
  var angkaitem8 = 1.0;
  var angkaitem9 = 1.0;
  var angkaitem10 = 1.0;
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
  AudioCache SfxAngka = AudioCache();
  AudioPlayer audio = AudioPlayer();

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller1.addListener(() {
      setState(() {
        angkaitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller2.addListener(() {
      setState(() {
        angkaitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        angkaitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller4.addListener(() {
      setState(() {
        angkaitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        angkaitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller6.addListener(() {
      setState(() {
        angkaitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        angkaitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller8.addListener(() {
      setState(() {
        angkaitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        angkaitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller10.addListener(() {
      setState(() {
        angkaitem10 = _controller10.value;
      });
    });
    SfxAngka = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxAngka.play(url);
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
    audio.dispose();
    super.dispose();
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
                  SfxAngka.play('audio/BELAJAR/angka/31.mp3');
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
                  scale: angkaitem1,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-31.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  SfxAngka.play('audio/BELAJAR/angka/32.mp3');
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
                  scale: angkaitem2,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-32.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  SfxAngka.play('audio/BELAJAR/angka/33.mp3');
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
                  scale: angkaitem3,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-33.png',
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
                  SfxAngka.play('audio/BELAJAR/angka/34.mp3');
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
                  scale: angkaitem4,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-34.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  SfxAngka.play('audio/BELAJAR/angka/35.mp3');
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
                  scale: angkaitem5,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-35.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  SfxAngka.play('audio/BELAJAR/angka/36.mp3');
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
                  scale: angkaitem6,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-36.png',
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
                  SfxAngka.play('audio/BELAJAR/angka/37.mp3');
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
                  scale: angkaitem7,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-37.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  SfxAngka.play('audio/BELAJAR/angka/38.mp3');
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
                  scale: angkaitem8,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-38.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  SfxAngka.play('audio/BELAJAR/angka/39.mp3');
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
                  scale: angkaitem9,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-39.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  SfxAngka.play('audio/BELAJAR/angka/40.mp3');
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
                  scale: angkaitem10,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-40.png',
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

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> with TickerProviderStateMixin {
  var angkaitem1 = 1.0;
  var angkaitem2 = 1.0;
  var angkaitem3 = 1.0;
  var angkaitem4 = 1.0;
  var angkaitem5 = 1.0;
  var angkaitem6 = 1.0;
  var angkaitem7 = 1.0;
  var angkaitem8 = 1.0;
  var angkaitem9 = 1.0;
  var angkaitem10 = 1.0;
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
  AudioCache SfxAngka = AudioCache();
  AudioPlayer audio = AudioPlayer();

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller1.addListener(() {
      setState(() {
        angkaitem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller2.addListener(() {
      setState(() {
        angkaitem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        angkaitem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller4.addListener(() {
      setState(() {
        angkaitem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        angkaitem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller6.addListener(() {
      setState(() {
        angkaitem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        angkaitem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller8.addListener(() {
      setState(() {
        angkaitem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        angkaitem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 1,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller10.addListener(() {
      setState(() {
        angkaitem10 = _controller10.value;
      });
    });

    SfxAngka = AudioCache(fixedPlayer: audio);
    super.initState();
  }

  Future<void> PlayAudio(url) async {
    SfxAngka.play(url);
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
    super.dispose();
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
                  PlayAudio('audio/BELAJAR/angka/41.mp3');
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
                  scale: angkaitem1,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-41.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/42.mp3');
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
                  scale: angkaitem2,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-42.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/43.mp3');
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
                  scale: angkaitem3,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-43.png',
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
                  PlayAudio('audio/BELAJAR/angka/44.mp3');
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
                  scale: angkaitem4,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-44.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/45.mp3');
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
                  scale: angkaitem5,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-45.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/46.mp3');
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
                  scale: angkaitem6,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-46.png',
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
                  PlayAudio('audio/BELAJAR/angka/47.mp3');
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
                  scale: angkaitem7,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-47.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/48.mp3');
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
                  scale: angkaitem8,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-48.png',
                  ),
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/49.mp3');
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
                  scale: angkaitem9,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-49.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  PlayAudio('audio/BELAJAR/angka/50.mp3');
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
                  scale: angkaitem10,
                  child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-50.png',
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
