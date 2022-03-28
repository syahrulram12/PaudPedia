import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_angka/belajar_angka.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

var AngkaItem1 = 0.5;
var AngkaItem2 = 0.5;
var AngkaItem3 = 0.5;
var AngkaItem4 = 0.5;
var AngkaItem5 = 0.5;
var AngkaItem6 = 0.5;
var AngkaItem7 = 0.5;
var AngkaItem8 = 0.5;
var AngkaItem9 = 0.5;
var AngkaItem10 = 0.5;

class _Page1State extends State<Page1> with TickerProviderStateMixin {
  var AngkaItem1 = 0.5;
  var AngkaItem2 = 0.5;
  var AngkaItem3 = 0.5;
  var AngkaItem4 = 0.5;
  var AngkaItem5 = 0.5;
  var AngkaItem6 = 0.5;
  var AngkaItem7 = 0.5;
  var AngkaItem8 = 0.5;
  var AngkaItem9 = 0.5;
  var AngkaItem10 = 0.5;
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

  @override
  void initState() {
    _controller1 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller1.addListener(() {
      setState(() {
        AngkaItem1 = _controller1.value;
      });
    });
    _controller2 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller2.addListener(() {
      setState(() {
        AngkaItem2 = _controller2.value;
      });
    });
    _controller3 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller3.addListener(() {
      setState(() {
        AngkaItem3 = _controller3.value;
      });
    });
    _controller4 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller4.addListener(() {
      setState(() {
        AngkaItem4 = _controller4.value;
      });
    });
    _controller5 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller5.addListener(() {
      setState(() {
        AngkaItem5 = _controller5.value;
      });
    });
    _controller6 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller6.addListener(() {
      setState(() {
        AngkaItem6 = _controller6.value;
      });
    });
    _controller7 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller7.addListener(() {
      setState(() {
        AngkaItem7 = _controller7.value;
      });
    });
    _controller8 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller8.addListener(() {
      setState(() {
        AngkaItem8 = _controller8.value;
      });
    });
    _controller9 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(milliseconds: 300));
    _controller9.addListener(() {
      setState(() {
        AngkaItem9 = _controller9.value;
      });
    });
    _controller10 = AnimationController(
        vsync: this,
        lowerBound: 0.5,
        upperBound: 1.0,
        duration: Duration(seconds: 1));
    _controller10.addListener(() {
      setState(() {
        AngkaItem10 = _controller10.value;
      });
    });
    super.initState();
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
            Row(
              children: [
                Flexible(
                  child: GestureDetector(
                    onTap: () {
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
                      scale: AngkaItem1,
                      child: AngkaItem(
                        Imageurl: 'icon_number/icon_1-10/icon_1-10-01.png',
                      ),
                    ),
                  ),
                ),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-02.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-03.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-04.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-05.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-06.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-07.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-08.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-09.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(child: Container()),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_1-10/icon_1-10-10.png',
                    )),
                Flexible(child: Container())
              ],
            ),
          ],
        ));
  }
}

// class Page1 extends StatefulWidget {
//   const Page1({Key? key}) : super(key: key);

//   _Page1State CreateState() =>
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-11.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-12.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-13.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-14.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-15.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-16.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-17.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-18.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-19.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(child: Container()),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_11-20/icon_11-20-20.png',
                    )),
                Flexible(child: Container())
              ],
            ),
          ],
        ));
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-21.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-22.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-23.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-24.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-25.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-26.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-27.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-28.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-29.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(child: Container()),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_21-30/icon_21-30-30.png',
                    )),
                Flexible(child: Container())
              ],
            ),
          ],
        ));
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-31.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-32.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-33.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-34.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-35.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-36.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-37.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-38.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-39.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(child: Container()),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_31-40/icon_31-40-40.png',
                    )),
                Flexible(child: Container())
              ],
            ),
          ],
        ));
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-41.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-42.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-43.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-44.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-45.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-46.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-47.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-48.png',
                    )),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-49.png',
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(child: Container()),
                Flexible(
                    child: AngkaItem(
                      Imageurl: 'icon_number/icon_41-50/icon_41-50-50.png',
                    )),
                Flexible(child: Container())
              ],
            ),
          ],
        ));
  }
}