import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_huruf/belajar_huruf.dart';


class TombolHuruf extends StatelessWidget {
  final String UrlHuruf;
  const TombolHuruf( {Key? key, required this.UrlHuruf}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: UrlHuruf +'01.png', audioUrl: 'a.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl: UrlHuruf +'02.png',audioUrl: 'b.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl: UrlHuruf + '03.png',audioUrl: 'c.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '04.png',audioUrl: 'd.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl: UrlHuruf + '05.png',audioUrl: 'e.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '06.png',audioUrl: 'f.mp3',)),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '07.png',audioUrl: 'g.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '08.png',audioUrl: 'h.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '09.png',audioUrl: 'i.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '10.png',audioUrl: 'j.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '11.png',audioUrl: 'k.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '12.png',audioUrl: 'l.mp3',)),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl: UrlHuruf + '13.png',audioUrl: 'm.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '14.png',audioUrl: 'n.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '15.png',audioUrl: 'o.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '16.png',audioUrl: 'p.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '17.png',audioUrl: 'q.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl: UrlHuruf +'18.png',audioUrl: 'r.mp3',)),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '19.png',audioUrl: 's.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '20.png',audioUrl: 't.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '21.png',audioUrl: 'u.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '22.png',audioUrl: 'v.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '23.png',audioUrl: 'w.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '24.png',audioUrl: 'x.mp3',)),
          ],
        ),
        Row(
          children: [
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '25.png',audioUrl: 'y.mp3',)),
            Flexible(
                child: HurufItem(
                    Imageurl:UrlHuruf + '26.png',audioUrl: 'z.mp3',)),
          ],
        ),
      ],
    ));
  }
}
