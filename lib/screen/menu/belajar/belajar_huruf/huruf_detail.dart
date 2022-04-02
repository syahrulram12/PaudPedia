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
    return Container();
  }
}
