import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/controller/forum/topic_list_controller.dart';
import 'package:paudpedia_kemendikbud/models/together_room/topiclist/forum_topic_response.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/today_topic/topic_detail_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/paud_date_formarter.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';

class TopicListMonthPage extends StatelessWidget {
  TopicListController pageController =
      Get.put(TopicListController(paudRepository: Get.find()));

  TopicListMonthPage({Key? key}) : super(key: key);

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
                isShowExit: true,
                onBackTap: () {
                  Get.back();
                },
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: bgLightBlue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Topik Bulan Ini",
                    style: GoogleFonts.fredokaOne(
                        color: Colors.white, fontSize: 18),
                  )),
              GetBuilder<TopicListController>(builder: (controller) {
                if (controller.viewState.value is ErrorScreenState) {
                  return Expanded(
                    child: Center(
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: bgOrange,
                          ),
                          onPressed: () {
                            controller.getTopicList();
                          },
                          child: Text("Coba lagi",
                              style:
                                  GoogleFonts.fredokaOne(color: Colors.white))),
                    ),
                  );
                }

                return Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      color: bgLightBlue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Obx(
                      () => Scrollbar(
                        isAlwaysShown: true,
                        child: ListView.builder(
                            itemCount: pageController
                                .listTopic.value.data?.length
                                .orZero(),
                            itemBuilder: (_, pos) {
                              ForumTopicResponse topic =
                                  pageController.listTopic.value.data![pos];

                              return GestureDetector(
                                onTap: () {
                                  Get.to(() =>
                                      TopicDetailPage(topicId: topic.iPost));
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black))),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CachedNetworkImage(
                                        imageUrl: topic.nPostImage,
                                        width: 97,
                                        height: 97,
                                        placeholder: (context, _) =>
                                            Image.network(topic.placeholder),
                                        errorWidget: (context, _, __) =>
                                            Image.network(topic.placeholder),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                            text: "${topic.nPostTitle}\n",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          TextSpan(
                                            text:
                                                PaudDateFormater.formatDateFor(
                                                    PaudDateFormater.FORMAT_V2,
                                                    topic.dPost),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          )
                                        ])),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
