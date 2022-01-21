import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_angka/belajar_angka.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-01.png',
              audioUrl: '1.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-02.png',
              audioUrl: '2.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-03.png',
              audioUrl: '3.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-04.png',
              audioUrl: '4.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-05.png',
              audioUrl: '5.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-06.png',
              audioUrl: '6.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-07.png',
              audioUrl: '7.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-08.png',
              audioUrl: '8.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-09.png',
              audioUrl: '9.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_1-10/icon_1-10-10.png',
              audioUrl: '10.mp3',
            )),
            Flexible(child: Container())
          ],
        ),
      ],
    ));
  }
}

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
              audioUrl: '11.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_11-20/icon_11-20-12.png',
              audioUrl: '12.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_11-20/icon_11-20-13.png',
              audioUrl: '13.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_11-20/icon_11-20-14.png',
              audioUrl: '14.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_11-20/icon_11-20-15.png',
              audioUrl: '15.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_11-20/icon_11-20-16.png',
              audioUrl: '16.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_11-20/icon_11-20-17.png',
              audioUrl: '17.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_11-20/icon_11-20-18.png',
              audioUrl: '18.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_11-20/icon_11-20-19.png',
              audioUrl: '19.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
                child: AngkaItem(
                  Imageurl: 'icon_number/icon_11-20/icon_11-20-20.png',
                  audioUrl: '20.mp3',
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
              audioUrl: '21.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_21-30/icon_21-30-22.png',
              audioUrl: '22.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_21-30/icon_21-30-23.png',
              audioUrl: '23.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_21-30/icon_21-30-24.png',
              audioUrl: '24.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_21-30/icon_21-30-25.png',
              audioUrl: '25.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_21-30/icon_21-30-26.png',
              audioUrl: '26.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_21-30/icon_21-30-27.png',
              audioUrl: '27.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_21-30/icon_21-30-28.png',
              audioUrl: '28.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_21-30/icon_21-30-29.png',
              audioUrl: '29.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
                child: AngkaItem(
                  Imageurl: 'icon_number/icon_21-30/icon_21-30-30.png',
                  audioUrl: '30.mp3',
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
              audioUrl: '31.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_31-40/icon_31-40-32.png',
              audioUrl: '32.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_31-40/icon_31-40-33.png',
              audioUrl: '33.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_31-40/icon_31-40-34.png',
              audioUrl: '34.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_31-40/icon_31-40-35.png',
              audioUrl: '35.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_31-40/icon_31-40-36.png',
              audioUrl: '36.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_31-40/icon_31-40-37.png',
              audioUrl: '37.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_31-40/icon_31-40-38.png',
              audioUrl: '38.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_31-40/icon_31-40-39.png',
              audioUrl: '39.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
                child: AngkaItem(
                  Imageurl: 'icon_number/icon_31-40/icon_31-40-40.png',
                  audioUrl: '40.mp3',
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
              audioUrl: '41.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_41-50/icon_41-50-42.png',
              audioUrl: '42.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_41-50/icon_41-50-43.png',
              audioUrl: '43.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_41-50/icon_41-50-44.png',
              audioUrl: '44.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_41-50/icon_41-50-45.png',
              audioUrl: '45.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_41-50/icon_41-50-46.png',
              audioUrl: '46.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_41-50/icon_41-50-47.png',
              audioUrl: '47.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_41-50/icon_41-50-48.png',
              audioUrl: '48.mp3',
            )),
            Flexible(
                child: AngkaItem(
              Imageurl: 'icon_number/icon_41-50/icon_41-50-49.png',
              audioUrl: '49.mp3',
            )),
          ],
        ),
        Row(
          children: [
            Flexible(child: Container()),
            Flexible(
                child: AngkaItem(
                  Imageurl: 'icon_number/icon_41-50/icon_41-50-50.png',
                  audioUrl: '50.mp3',
                )),
            Flexible(child: Container())
          ],
        ),
      ],
    ));
  }
}
