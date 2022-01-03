import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/forum_list_detail_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/together_room/forumlist/forum_detail_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/login/forum_login_user_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/report_source_type.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/form/form_comment_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/form/form_participant_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/form/form_report_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/today_topic/component/forum_card_header.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/today_topic/component/forum_card_item.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';
import 'package:video_player/video_player.dart';

class ForumDetailpage extends StatelessWidget {
  final String forumId;
  VideoPlayerController? videoController;
  ForumListDetailController pageController =
      Get.put(ForumListDetailController(paudRepository: Get.find()));

  ForumDetailpage({Key? key, required this.forumId}) : super(key: key);

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
              imageBackground: "assets/images/banner_forum_together.png",
              onBackTap: () {
                Get.back();
              },
              isShowExit: true,
              textLeftLabel: "FORUM BERSAMA",
              buttonRightLabel: "Berpartisipasi",
              onParticipate: () {
                videoController?.pause();
                Get.to(() => FormParticipantPage())
                    ?.then((value) => pageController.getForumDetail(forumId));
              },
            ),
            SizedBox(
              height: 5,
            ),
            GetBuilder<ForumListDetailController>(
                init: pageController,
                initState: (state) {
                  pageController.setForumId(forumId);
                },
                global: false,
                builder: (controller) {
                  if (controller.viewState.value is ErrorScreenState) {
                    return Expanded(
                      child: Center(
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: bgOrange,
                            ),
                            onPressed: () {
                              controller.getForumDetail(forumId);
                            },
                            child: Text("Coba lagi",
                                style: GoogleFonts.fredokaOne(
                                    color: Colors.white))),
                      ),
                    );
                  }
                  return Expanded(
                      child: Stack(children: [
                    Positioned(
                        top: 20,
                        left: 0,
                        right: 0,
                        bottom: 20,
                        child: Obx(() => ForumCommentList(
                              forumDetail:
                                  pageController.forumDetail.value.data!,
                              userInfo: pageController.userInfo,
                              forumId: forumId,
                              onVideoInit: (controller) {
                                videoController = controller;
                              },
                            ))),
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
                  ]));
                })
          ],
        ),
      )),
    );
  }
}

class ForumCommentList extends StatelessWidget {
  final ForumDetailResponse forumDetail;
  final ForumLoginUserResponse? userInfo;
  final String forumId;
  final ForumListDetailController pageController = Get.find();
  final Function(VideoPlayerController?) onVideoInit;
  VideoPlayerController? videoController;

  ForumCommentList(
      {Key? key,
      required this.forumDetail,
      this.userInfo,
      required this.forumId,
      required this.onVideoInit})
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
              itemCount: (forumDetail.comment?.length.orZero() ?? 0) + 1,
              itemBuilder: (_, pos) {
                if (pos == 0) {
                  return Column(
                    children: [
                      ForumCardHeader(
                        name: forumDetail.nUser,
                        title: forumDetail.nPostTitle,
                        date: forumDetail.dPost,
                        content: forumDetail.ePostContent,
                        imageUrl: forumDetail.nUserPict,
                        imagePost: forumDetail.nPostImage,
                        videoPost: forumDetail.nPostVideo,
                        buttonTitle: "Komentar",
                        onButtonTap: () {
                          videoController?.pause();
                          Get.to(() => FormCommentPage(
                                    postId: forumDetail.iPost,
                                  ))
                              ?.then((value) =>
                                  pageController.getForumDetail(forumId));
                        },
                        onInitVideo: (videControl) {
                          onVideoInit.call(videControl);
                          videoController = videControl;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "KOMENTAR",
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  );
                }
                var comment = forumDetail.comment![pos - 1];
                return ForumCardItem(
                  isShownReportButton:
                      userInfo?.iUser.orEmpty() != comment.iUser,
                  imageUrl: comment.nUserPict,
                  placeholder: comment.nUserPict,
                  name: comment.nUser,
                  title: comment.eComment,
                  time: comment.dComment,
                  onReportTap: () {
                    Get.to(() => FormReportPage(
                              commentId: comment.iComment,
                              name: comment.nUser,
                              title: comment.eComment,
                              date: comment.dComment,
                              imageUrl: comment.nUserPict,
                              source: ReportSourceType.FORUM,
                            ))
                        ?.then(
                            (value) => pageController.getForumDetail(forumId));
                  },
                );
              })),
    );
  }
}
