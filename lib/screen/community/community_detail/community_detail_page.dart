import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/controller/community/community_detail_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/community/detail/paud_detail_response.dart';
import 'package:paudpedia_kemendikbud/models/community/detail_type.dart';
import 'package:paudpedia_kemendikbud/screen/community/community_detail/community_article_widget.dart';
import 'package:paudpedia_kemendikbud/screen/community/community_detail/paud_video_widget.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class CommunityDetailPage extends StatelessWidget {
  final String id;
  final String headerLabel;
  final CommunityDetailController pageController =
      CommunityDetailController(paudRepository: Get.find());

  CommunityDetailPage({Key? key, required this.id, this.headerLabel = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: GetBuilder<CommunityDetailController>(
                init: pageController,
                global: false,
                initState: (_) {
                  pageController.setInfoId(id);
                },
                builder: (controller) {
                  if (controller.viewState.value is ErrorScreenState) {
                    return Center(
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: bgOrange,
                          ),
                          onPressed: () {
                            controller.getCommunityDetail(id);
                          },
                          child: Text("Coba lagi",
                              style:
                                  GoogleFonts.fredokaOne(color: Colors.white))),
                    );
                  } else if (controller.viewState.value is LoadedScreenState) {
                    PaudDetailResponse? detail =
                        controller.community.value.data;

                    if (detail?.type == DetailType.ARTICLE) {
                      return CommunityArticleWidget(
                        article: detail,
                        headerLabel: headerLabel,
                      );
                    } else {
                      return PaudVideoWidget(
                        video: detail,
                        imageHeader:
                            "assets/images/banner_creative_teacher.png",
                        tagLabel: "Guru Kreatif",
                        headerLabel: headerLabel,
                        onRecommendationTap: (id) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CommunityDetailPage(id: id)));
                        },
                      );
                    }
                  }

                  return Container();
                })));
  }
}
