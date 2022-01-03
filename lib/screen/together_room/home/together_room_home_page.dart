import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/controller/forum/login_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/room_home_controller.dart';
import 'package:paudpedia_kemendikbud/screen/home/home_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/event/event_calendar_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/form/forum_list_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/profile/profile_room_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/today_topic/topic_list_month_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:simple_tooltip/simple_tooltip.dart';
import 'package:sizer/sizer.dart';

class TogetherRoomHomePage extends StatelessWidget {
  RoomHomeController pageController =
      Get.put(RoomHomeController(paudRepository: Get.find()));

  TogetherRoomHomePage({Key? key}) : super(key: key);

  Future<bool> onPopBack() async {
    Get.offAll(HomePage());
    Get.delete<LoginController>();
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onPopBack,
      child: Scaffold(
        backgroundColor: bgLightBlue,
        body: SafeArea(
          child: GetBuilder<RoomHomeController>(
              init: pageController,
              global: false,
              builder: (controller) {
                return Container(
                  width: getWidth(context),
                  height: getHeight(context),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/background_room_home.png"))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                onPopBack();
                              },
                              child: Image.asset("assets/images/back.png"),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => ProfileRoomPage())?.then(
                                        (value) => pageController.update());
                                  },
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Obx(() {
                                        if (pageController.userInfo.value !=
                                                null &&
                                            pageController.userInfo.value!
                                                .nUserPict.isNotEmpty) {
                                          return SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: CircleAvatar(
                                                radius: 50,
                                                backgroundImage: NetworkImage(
                                                  pageController.userInfo.value!
                                                      .nUserPict,
                                                )),
                                          );
                                        }
                                        return Image.asset(
                                          "assets/images/placeholder_profile.png",
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        );
                                      })),
                                ),
                                TextButton(
                                  onPressed: () {
                                    pageController.logout();
                                    Get.back();
                                  },
                                  child: Text(
                                    "Keluar",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  style: TextButton.styleFrom(
                                      backgroundColor: bgOrange,
                                      fixedSize: Size(74, 20),
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size(74, 20),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.to(ForumListPage());
                        },
                        child: Image.asset(
                          "assets/images/forum_together_menu.png",
                          width: 23.w,
                          height: 10.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "FORUM BERSAMA",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14.sp, color: textDarkBlue),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(TopicListMonthPage());
                        },
                        child: Image.asset(
                          "assets/images/current_month_menu.png",
                          width: 23.w,
                          height: 10.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "TOPIK BULAN INI",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14.sp, color: textDarkBlue),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(EventCalendarPage());
                        },
                        child: Image.asset(
                          "assets/images/agenda_menu.png",
                          width: 23.w,
                          height: 10.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "AGENDA",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14.sp, color: textDarkBlue),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Obx(
                            () => SimpleTooltip(
                              show: pageController.isShow.value,
                              minWidth: 100,
                              maxWidth: 200,
                              arrowLength: 10,
                              borderWidth: 0,
                              targetCenter: Offset(200, 0),
                              ballonPadding: const EdgeInsets.all(5),
                              content: Text(
                                "Fasilitas komunikasi guru, orangtua dan pegiat PAUD",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.none),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  pageController.toogleTooltopShow();
                                },
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        "assets/images/burron_info.png")),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
