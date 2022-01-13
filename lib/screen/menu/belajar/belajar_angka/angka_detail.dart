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
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-01.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-02.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-03.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-04.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-05.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-06.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-07.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-08.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-09.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_1-10/icon_1-10-10.png')),
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
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-11.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-12.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-13.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-14.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-15.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-16.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-17.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-18.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-19.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_11-20/icon_11-20-20.png')),
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
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-21.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-22.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-23.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-24.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-25.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-26.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-27.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-28.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-29.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_21-30/icon_21-30-30.png')),
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
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-31.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-32.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-33.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-34.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-35.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-36.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-37.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-38.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-39.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_31-40/icon_31-40-40.png')),
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
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-41.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-42.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-43.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-44.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-45.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-46.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-47.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-48.png')),
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-49.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: AngkaItem(
                    Imageurl: 'icon_number/icon_41-50/icon_41-50-50.png')),
          ],
        ),
      ],
    ));
  }
}
