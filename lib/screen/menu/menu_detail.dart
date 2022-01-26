import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_bentuk/belajar_bentuk.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_buah/belajar_buah.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_profesi/belajar_profesi.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_sayur/belajar_sayur.dart';
import 'package:paudpedia_kemendikbud/screen/menu/menu.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_huruf/belajar_huruf.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_angka/belajar_angka.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_benda/belajar_benda.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_warna/belajar_warna.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_hewan/belajar_hewan.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_tanaman/belajar_tanaman.dart';

class MenuBelajar extends StatelessWidget {
  const MenuBelajar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                    child: MenuItem(
                        ImageUrl: 'assets/icons/menu/icon_menu-03.png',
                        OnMenuClick: () {
                          Get.to(() => HurufHome());
                        },
                        width: 100,
                        height: 100)),
                Flexible(
                  child: MenuItem(
                      ImageUrl: 'assets/icons/menu/icon_menu-04.png',
                      OnMenuClick: () {
                        Get.to(() => AngkaHome());
                      },
                      width: 100,
                      height: 100),
                ),
                Flexible(
                    child: MenuItem(
                        ImageUrl: 'assets/icons/menu/icon_menu-05.png',
                        OnMenuClick: () {
                          Get.to(() => BendaHome());
                        },
                        width: 100,
                        height: 100)),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                    child: MenuItem(
                        ImageUrl: 'assets/icons/menu/icon_menu-06.png',
                        OnMenuClick: () {
                          Get.to(() => BentukHome());
                        },
                        width: 100,
                        height: 100)),
                Flexible(
                    child: MenuItem(
                        ImageUrl: 'assets/icons/menu/icon_menu-07.png',
                        OnMenuClick: () {
                          Get.to(() => BuahHome());
                        },
                        width: 100,
                        height: 100)),
                Flexible(
                    child: MenuItem(
                        ImageUrl: 'assets/icons/menu/icon_menu-08.png',
                        OnMenuClick: () {
                          Get.to(() => SayurHome());
                        },
                        width: 100,
                        height: 100)),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                    child: MenuItem(
                        ImageUrl: 'assets/icons/menu/icon_menu-09.png',
                        OnMenuClick: () {
                          Get.to(() => WarnaHome());
                        },
                        width: 100,
                        height: 100)),
                Flexible(
                  child: MenuItem(
                      ImageUrl: 'assets/icons/menu/icon_menu-10.png',
                      //OnMenuClick: () {
                      // Get.to(() => TanamanHome());
                      //},
                      width: 100,
                      height: 100),
                ),
                Flexible(
                    child: MenuItem(
                        ImageUrl: 'assets/icons/menu/icon_menu-11.png',
                        OnMenuClick: () {
                          Get.to(() => HewanHome());
                        },
                        width: 100,
                        height: 100))
              ]),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Flexible(
                child: MenuItem(
                    ImageUrl: 'assets/icons/menu/icon_menu-12.png',
                    OnMenuClick: () {
                      Get.to(() => ProfesiHome());
                    },
                    width: 100,
                    height: 100)),
            Flexible(child: Container()),
            Flexible(child: Container())
          ]),
        ],
      ),
    );
  }
}
