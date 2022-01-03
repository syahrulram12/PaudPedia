import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/forum_header_controller.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/login/together_room_login_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class Toolbar extends StatelessWidget {
  final Function? onBackTap;
  ForumHeaderController pageController =
      Get.put(ForumHeaderController(paudRepository: Get.find()));

  Toolbar({Key? key, this.onBackTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                onBackTap?.call();
              },
              child: Image.asset(
                "assets/images/back.png",
                fit: BoxFit.cover,
              )),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: bgOrange,
                  padding: EdgeInsets.zero,
                  minimumSize: Size(80, 20)),
              onPressed: () {
                pageController.logOut();
                Navigator.popUntil(
                    context,
                    (route) =>
                        route.settings.name ==
                        TogetherRoomLoginPage().toStringShort());
              },
              child: Text(
                "Keluar",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
