import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_huruf/belajar_huruf.dart';

class HurufBesar extends StatelessWidget {
  const HurufBesar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-01.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-02.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-03.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-04.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-05.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-06.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-07.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-08.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-09.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-10.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-11.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-12.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-13.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-14.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-15.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-16.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-17.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-18.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-19.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-20.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-21.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-22.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-23.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-24.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-25.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_big/icon_alfabet_-26.png')),
          ],
        ),
      ],
    ));
  }
}

class HurufKecil extends StatelessWidget {
  const HurufKecil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--01.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--02.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--03.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--04.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--05.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--06.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--07.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--08.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--09.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--10.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--11.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--12.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--13.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--14.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--15.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--16.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--17.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--18.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--19.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--20.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--21.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--22.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--23.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--24.png')),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--25.png')),
            Flexible(
                child: HurufItem(
                    Imageurl: 'icon_alfabet_small/icon_alfabet_small--26.png')),
          ],
        ),
      ],
    ));
  }
}
