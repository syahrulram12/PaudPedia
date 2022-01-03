import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/controller/gallery/sing_detail_controller.dart';
import 'package:paudpedia_kemendikbud/models/community/detail/paud_detail_response.dart';
import 'package:paudpedia_kemendikbud/screen/community/community_detail/paud_video_widget.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class SingDetailPage extends StatelessWidget {
  String singId = "";
  SingDetailController pageController =
      SingDetailController(paudRepository: Get.find());

  SingDetailPage({Key? key, required this.singId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: SafeArea(
            child: GetBuilder<SingDetailController>(
                init: pageController,
                global: false,
                initState: (_) {
                  pageController.setSingId(singId);
                },
                builder: (controller) {
                  if (controller.viewState.value is ErrorScreenState) {
                    return Center(
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: bgOrange,
                          ),
                          onPressed: () {
                            controller.getSingDetail(singId);
                          },
                          child: Text("Coba lagi",
                              style:
                                  GoogleFonts.fredokaOne(color: Colors.white))),
                    );
                  } else if (controller.viewState.value is LoadedScreenState) {
                    return PaudVideoWidget(
                      video: pageController.gallery.value.data,
                      tagLabel: "Video Bernyanyi",
                      headerLabel: "RUANG BERNYANYI",
                      imageHeader: "assets/images/banner_sing_room.png",
                      onRecommendationTap: (id) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SingDetailPage(singId: id)));
                      },
                    );
                  }

                  return Container();
                })));
  }
}
