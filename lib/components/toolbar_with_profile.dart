import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/controller/forum/forum_header_controller.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/login/together_room_login_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';

class ToolBarWithProfile extends StatelessWidget {
  final String imageBackground;
  final String? buttonRightLabel;
  final String? textLeftLabel;
  final bool isShowExit;
  final Function? onBackTap;
  final Function? onParticipate;

  ForumHeaderController pageController =
      Get.put(ForumHeaderController(paudRepository: Get.find()));

  ToolBarWithProfile(
      {Key? key,
      required this.imageBackground,
      this.onBackTap,
      this.onParticipate,
      this.buttonRightLabel,
      this.textLeftLabel,
      this.isShowExit = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      height: 130,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imageBackground), fit: BoxFit.cover)),
      child: Stack(
        children: [
          if (onBackTap != null)
            Positioned(
                top: 5,
                left: 5,
                child: GestureDetector(
                    onTap: () {
                      onBackTap?.call();
                    },
                    child: Image.asset("assets/images/back.png"))),
          if (isShowExit)
            Positioned(
                right: 5,
                top: 5,
                child: Column(
                  children: [
                    Obx(() => pageController.profilePicture.value
                            .contains("assets/images/")
                        ? Image.asset(
                            "assets/images/placeholder_profile.png",
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: CachedNetworkImage(
                              imageUrl: pageController.profilePicture.value,
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                              placeholder: (context, _) => Image.asset(
                                "assets/images/placeholder_profile.png",
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                              errorWidget: (context, _, __) => Image.asset(
                                "assets/images/placeholder_profile.png",
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    GestureDetector(
                      onTap: () {
                        pageController.logOut();
                        Navigator.popUntil(
                            context,
                            (route) =>
                                route.settings.name ==
                                TogetherRoomLoginPage().toStringShort());
                      },
                      child: Container(
                        height: 15,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            color: bgOrange,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Keluar",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                )),
          if (textLeftLabel != null)
            Positioned(
              left: 0,
              bottom: 0,
              child: Text(
                textLeftLabel.orEmpty(),
                style:
                    GoogleFonts.fredokaOne(color: textDarkBlue, fontSize: 20),
              ),
            ),
          if (buttonRightLabel != null)
            Positioned(
              bottom: 0,
              right: 0,
              child: TextButton(
                  onPressed: () {
                    onParticipate?.call();
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: bgOrange,
                      minimumSize: Size(100, 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5)),
                  child: Text(
                    buttonRightLabel.orEmpty(),
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  )),
            )
        ],
      ),
    );
  }
}
