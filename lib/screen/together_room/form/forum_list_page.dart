import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/forum_list_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/together_room/forumlist/forum_together_response.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/form/form_participant_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/form/forum_detail_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/today_topic/component/forum_card_item.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/paud_date_formarter.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';

class ForumListPage extends StatelessWidget {
  ForumListController pageController =
      Get.put(ForumListController(repository: Get.find()));

  ForumListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ToolBarWithProfile(
              imageBackground: "assets/images/banner_forum_together.png",
              textLeftLabel: "FORUM BERSAMA",
              buttonRightLabel: "Berpartisipasi",
              onBackTap: () {
                Get.back();
              },
              isShowExit: true,
              onParticipate: () {
                Get.to(FormParticipantPage())
                    ?.then((value) => pageController.getForumList());
              },
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 20,
                    child: GetBuilder<ForumListController>(
                        init: pageController,
                        global: false,
                        builder: (controller) {
                          if (controller.viewState.value is ErrorScreenState) {
                            return Center(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: bgOrange,
                                  ),
                                  onPressed: () {
                                    controller.getForumList();
                                  },
                                  child: Text("Coba lagi",
                                      style: GoogleFonts.fredokaOne(
                                          color: Colors.white))),
                            );
                          }
                          return Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 22),
                            decoration: BoxDecoration(
                              color: bgLightBlue,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Obx(
                              () => Scrollbar(
                                isAlwaysShown: true,
                                interactive: true,
                                thickness: 8,
                                child: ListView.builder(
                                    itemCount: pageController
                                        .listForum.value.data?.length
                                        .orZero(),
                                    itemBuilder: (_, pos) {
                                      ForumTogetherResponse item =
                                          pageController
                                              .listForum.value.data![pos];

                                      return ForumCardItem(
                                        imageUrl: item.nUserPict,
                                        placeholder: item.placeholder,
                                        name: item.nUser,
                                        title: item.nPostTitle,
                                        time: PaudDateFormater.formatDateFor(
                                            PaudDateFormater.FORMAT_V1,
                                            "${item.dPostPublish} ${item.tPostPublish}"),
                                        onItemTap: () {
                                          Get.to(() => ForumDetailpage(
                                              forumId: pageController
                                                  .listForum
                                                  .value
                                                  .data![pos]
                                                  .iPost))?.then((value) =>
                                              print("ForumListPage Back"));
                                        },
                                      );
                                    }),
                              ),
                            ),
                          );
                        }),
                  ),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Image.asset(
                        "assets/images/leaf.png",
                        fit: BoxFit.cover,
                        width: 40,
                      )),
                  Positioned(
                      left: 5,
                      bottom: 5,
                      child: Image.asset(
                        "assets/images/character_ines.png",
                        height: 100,
                      ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
