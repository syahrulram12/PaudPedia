import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/controller/gallery/playing_detail_controller.dart';
import 'package:paudpedia_kemendikbud/models/community/detail/paud_detail_response.dart';
import 'package:paudpedia_kemendikbud/screen/community/community_detail/paud_video_widget.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class PlayingDetailPage extends StatelessWidget {
  String playingId = "";
  PlayingDetailController pageController =
      PlayingDetailController(paudRepository: Get.find());

  PlayingDetailPage({Key? key, required this.playingId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
          child: GetBuilder<PlayingDetailController>(
              global: false,
              init: pageController,
              initState: (_) {
                pageController.setPlayingId(playingId);
              },
              builder: (controller) {
                if (controller.viewState.value is ErrorScreenState) {
                  return Center(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: bgOrange,
                        ),
                        onPressed: () {
                          controller.getPlayingDetail(playingId);
                        },
                        child: Text("Coba lagi",
                            style:
                                GoogleFonts.fredokaOne(color: Colors.white))),
                  );
                } else if (controller.viewState.value is LoadedScreenState) {
                  return PaudVideoWidget(
                    video: controller.gallery.value.data,
                    tagLabel: "Video Bermain",
                    headerLabel: "RUANG BERMAIN",
                    imageHeader: "assets/images/banner_playing_room.png",
                    onRecommendationTap: (id) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PlayingDetailPage(playingId: id)));
                    },
                  );
                }

                return Container();
              })),
    );
  }
}
