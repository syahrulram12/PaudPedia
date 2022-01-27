import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_warna/belajar_warna.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-01-merah.png',
            width: 100,
            audioUrl: 'merah.mp3',
            height: 100,
          )))
        ]),
      )
    ]));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-02-kuning.png',
            width: 100,
            audioUrl: 'kuning.mp3',
            height: 100,
          ))),
        ]),
      )
    ]));
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-03-jingga.png',
            width: 100,
            audioUrl: 'jingga.mp3',
            height: 100,
          ))),
        ]),
      )
    ]));
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-04-hijau.png',
            width: 100,
            audioUrl: 'hijau.mp3',
            height: 100,
          ))),
        ]),
      )
    ]));
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-05-biru.png',
            width: 100,
            audioUrl: 'biru.mp3',
            height: 100,
          ))),
        ]),
      )
    ]));
  }
}

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-06-ungu.png',
            width: 100,
            audioUrl: 'ungu.mp3',
            height: 100,
          ))),
        ]),
      )
    ]));
  }
}

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-07-putih.png',
            width: 100,
            audioUrl: 'putih.mp3',
            height: 100,
          ))),
        ]),
      )
    ]));
  }
}

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-08-cokelat.png',
            width: 100,
            audioUrl: 'cokelat.mp3',
            height: 100,
          ))),
        ]),
      )
    ]));
  }
}

class Page9 extends StatelessWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-09-abuabu.png',
            width: 100,
            audioUrl: 'abu-abu.mp3',
            height: 100,
          ))),
        ]),
      )
    ]));
  }
}

class Page10 extends StatelessWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Row(children: [
          Flexible(
              child: Container(
                  child: WarnaItem(
            Imageurl: 'icon_cake/icon_cake-10-hitam.png',
            width: 100,
            audioUrl: 'hitam.mp3',
            height: 100,
          ))),
        ]),
      )
    ]));
  }
}
