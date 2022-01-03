import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_without_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/controller/gallery/playing_list_controller.dart';
import 'package:paudpedia_kemendikbud/models/gallery/playing/playing_list_response.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/component/item_gallery_card.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/playing/playing_detail_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class PlayingVideoListPage extends StatelessWidget {
  PlayingListController pageController =
      Get.put(PlayingListController(paudRepository: Get.find()));

  PlayingVideoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ToolBarWithoutProfile(
            imageBackground: "assets/images/banner_playing_room.png",
            textLeftLabel: "RUANG BERMAIN",
            onBackTap: () {
              Get.back();
            },
          ),
          Expanded(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: GetBuilder<PlayingListController>(builder: (controller) {
                  if (controller.viewState.value is ErrorScreenState) {
                    return Center(
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: bgOrange,
                          ),
                          onPressed: () {
                            controller.getPlayingList();
                          },
                          child: Text("Coba lagi",
                              style:
                                  GoogleFonts.fredokaOne(color: Colors.white))),
                    );
                  }

                  return Container(
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: bgLightBlue),
                    child: ListView.builder(
                        itemCount: pageController.plays.value.data?.length ?? 0,
                        itemBuilder: (context, pos) {
                          PlayingListResponse item =
                              pageController.plays.value.data![pos];

                          return ItemGalleryCard(
                            isVideo: true,
                            imageUrl: item.thumbnail,
                            title: item.nPostTitle,
                            date: item.dPost,
                            actionButtonTitle: "Sumber: \nwww.paudpedia.kemdibud.go.id",
                            onItemTap: () {
                              Get.to(() =>
                                  PlayingDetailPage(playingId: item.iPost));
                            },
                          );
                        }),
                  );
                })),
          )
        ],
      )),
    );
  }
}
