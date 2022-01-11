import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/screen/menu/menu.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_huruf/belajar_huruf.dart';
import 'package:paudpedia_kemendikbud/screen/menu/belajar/belajar_angka/belajar_angka.dart';

class MenuBelajar extends StatelessWidget {
  const MenuBelajar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
        child: Column(
      children: [
        Row(children: [
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
                  width: 100,
                  height: 100))
        ]),
        Row(children: [
          Flexible(
              child: MenuItem(
                  ImageUrl: 'assets/icons/menu/icon_menu-06.png',
                  // OnMenuClick: BentukHome()
                  width: 100,
                  height: 100)),
          Flexible(
            child: MenuItem(
                ImageUrl: 'assets/icons/menu/icon_menu-07.png',
                // OnMenuClick: buahHome()
                width: 100,
                height: 100),
          ),
          Flexible(
              child: MenuItem(
                  ImageUrl: 'assets/icons/menu/icon_menu-08.png',
                  // OnMenuClick: SayurHome()
                  width: 100,
                  height: 100))
        ]),
        Row(children: [
          Flexible(
              child: MenuItem(
                  ImageUrl: 'assets/icons/menu/icon_menu-09.png',
                  // OnMenuClick: WarnaHome()
                  width: 100,
                  height: 100)),
          Flexible(
            child: MenuItem(
                ImageUrl: 'assets/icons/menu/icon_menu-10.png',
                // OnMenuClick: TanamanHome()
                width: 100,
                height: 100),
          ),
          Flexible(
              child: MenuItem(
                  ImageUrl: 'assets/icons/menu/icon_menu-11.png',
                  // OnMenuClick: HewanHome(),
                  width: 100,
                  height: 100))
        ]),
        Row(children: [
          Flexible(
              child: MenuItem(
                  ImageUrl: 'assets/icons/menu/icon_menu-12.png',
                  // OnMenuClick: ProfesiHome(),
                  width: 100,
                  height: 100)),
        ]),
      ],
    ));
  }
}
