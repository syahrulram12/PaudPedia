import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_without_profile.dart';
import 'package:paudpedia_kemendikbud/controller/community/creative_teacher_list_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/components/item_common_card.dart';
import 'package:paudpedia_kemendikbud/models/community/detail_type.dart';
import 'package:paudpedia_kemendikbud/models/together_room/creativeteacher/creative_teacher_data.dart';
import 'package:paudpedia_kemendikbud/screen/community/community_detail/community_detail_page.dart';
import 'package:paudpedia_kemendikbud/screen/community/community_detail/paud_video_widget.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class CreativeTeacherListPage extends StatelessWidget {
  CreativeTeacherListController pageController =
      Get.put(CreativeTeacherListController(paudRepository: Get.find()));

  CreativeTeacherListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ToolBarWithoutProfile(
            imageBackground: "assets/images/banner_creative_teacher.png",
            textLeftLabel: "GURU KREATIF",
            onBackTap: () {
              Get.back();
            },
          ),
          Expanded(
            child: GetBuilder<CreativeTeacherListController>(
                builder: (controller) {
              if (controller.viewState.value is ErrorScreenState) {
                return Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: bgOrange,
                      ),
                      onPressed: () {
                        controller.getTeacherCreativeList();
                      },
                      child: Text("Coba lagi",
                          style: GoogleFonts.fredokaOne(color: Colors.white))),
                );
              }

              return Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 20, 25),
                child: Scrollbar(
                  isAlwaysShown: true,
                  interactive: true,
                  thickness: 8,
                  child: ListView.builder(
                      itemCount:
                          pageController.creativeList.value.data?.length ?? 0,
                      itemBuilder: (_, pos) {
                        CreativeTeacherDataResponse item =
                            pageController.creativeList.value.data![pos];

                        return ItemCommonCard(
                          imageUrl: item.thumbnail,
                          titleArticle: item.nPostTitle,
                          isVideo: item.type == DetailType.VIDEO,
                          dateArticle: item.dPost,
                          buttonTitle:
                              'Sumber: \nwww.paudpedia.kemdikbud.go.id',
                          onItemClick: () {
                            Get.to(() => CommunityDetailPage(
                                id: item.iPost, headerLabel: "GURU KREATIF"));
                          },
                        );
                      }),
                ),
              );
            }),
          )
        ],
      )),
    );
  }
}
