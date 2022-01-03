import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/controller/forum/topic_list_detail_controller.dart';
import 'package:paudpedia_kemendikbud/models/together_room/topiclist/forum_topic_detail_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/topiclist/topic_reply_response.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/today_topic/component/forum_card_header.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/today_topic/component/forum_card_item.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/today_topic/response_form_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/today_topic/topic_response_detail.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:video_player/video_player.dart';

class TopicDetailPage extends StatelessWidget {
  String topicId;
  TopicListDetailController pageController =
      Get.put(TopicListDetailController(paudRepository: Get.find()));

  TopicDetailPage({Key? key, required this.topicId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            ToolBarWithProfile(
              imageBackground: "assets/images/banner_current_topic.png",
              onBackTap: () {
                Get.back();
              },
              isShowExit: true,
              textLeftLabel: "TOPIK BULAN INI",
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
                child: Stack(children: [
              Positioned(
                  top: 35,
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: GetBuilder<TopicListDetailController>(initState: (_) {
                    pageController.setTopicId(topicId);
                  }, builder: (controller) {
                    if (controller.viewState.value is ErrorScreenState) {
                      return Center(
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: bgOrange,
                            ),
                            onPressed: () {
                              controller.getTopicListDetail(topicId);
                            },
                            child: Text("Coba lagi",
                                style: GoogleFonts.fredokaOne(
                                    color: Colors.white))),
                      );
                    }

                    return Obx(() => TopicCommentList(
                          topicResponse: pageController.topicDetail.value.data!,
                          topicId: topicId,
                        ));
                  })),
              Positioned(
                  right: 0,
                  left: (getWidth(context) / 2) / 1.6,
                  top: 5,
                  child: Row(children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: cardLightBlue,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text("Topik Bulan Ini",
                            style: GoogleFonts.fredokaOne(
                              color: Colors.white,
                              fontSize: 18,
                            ))),
                    Spacer(),
                    Image.asset(
                      "assets/images/leaf.png",
                      fit: BoxFit.cover,
                      width: 40,
                    ),
                  ])),
              Positioned(
                  left: 5,
                  bottom: 5,
                  child: Image.asset(
                    "assets/images/character_ines.png",
                    height: 100,
                  ))
            ]))
          ],
        ),
      )),
    );
  }
}

class TopicCommentList extends StatelessWidget {
  final TopicDetailResponse topicResponse;
  final String topicId;
  final TopicListDetailController pageController = Get.find();
  VideoPlayerController? videoControllers;

  TopicCommentList(
      {Key? key, required this.topicResponse, required this.topicId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
      child: Scrollbar(
          isAlwaysShown: true,
          interactive: true,
          thickness: 8,
          child: ListView.builder(
              shrinkWrap: false,
              itemCount: (topicResponse.respond?.length ?? 0) + 1,
              itemBuilder: (_, pos) {
                if (pos == 0) {
                  return Column(
                    children: [
                      ForumCardHeader(
                        name: topicResponse.nUser,
                        title: topicResponse.nPostTitle,
                        date: topicResponse.dPost,
                        content: topicResponse.ePostContent,
                        imageUrl: topicResponse.nUserPict,
                        imagePost: topicResponse.nPostImage,
                        videoPost: topicResponse.nPostVideo,
                        isShowButtonAction: topicResponse.respon == "on",
                        buttonTitle: "Respon",
                        onButtonTap: () {
                          videoControllers?.pause();
                          Get.to(() => ResponseFormPage(
                                    postId: topicResponse.iPost,
                                    postTypeCode: topicResponse.cPostRespond,
                                  ))
                              ?.then((value) =>
                                  pageController.getTopicListDetail(topicId));
                        },
                        onInitVideo: (controller) {
                          videoControllers = controller;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Respon",
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  );
                }

                TopicReplyResponse reply = topicResponse.respond![pos - 1];
                return ForumCardItem(
                  name: reply.nUser,
                  title: reply.nRespondTitle,
                  imageUrl: reply.nUserPict,
                  placeholder: reply.nUserPict,
                  time: reply.dRespond,
                  onItemTap: () {
                    videoControllers?.pause();
                    Get.to(() => TopicResponseDetail(response: reply))?.then(
                        (value) => pageController.getTopicListDetail(topicId));
                  },
                );
              })),
    );
  }
}
