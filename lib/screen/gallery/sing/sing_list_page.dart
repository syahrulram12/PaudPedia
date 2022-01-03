import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_without_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/controller/gallery/sing_list_controller.dart';
import 'package:paudpedia_kemendikbud/models/gallery/sing/sing_list_response.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/component/item_gallery_card.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/sing/sing_detail_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class SingListPage extends StatelessWidget {
  SingListController pageController =
      Get.put(SingListController(paudRepository: Get.find()));

  SingListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ToolBarWithoutProfile(
            imageBackground: "assets/images/banner_sing_room.png",
            textLeftLabel: "RUANG BERNYANYI",
            onBackTap: () {
              Get.back();
            },
          ),
          Expanded(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: GetBuilder<SingListController>(builder: (controller) {
                  if (controller.viewState.value is ErrorScreenState) {
                    return Center(
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: bgOrange,
                          ),
                          onPressed: () {
                            controller.getSingList();
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
                        itemCount: pageController.sings.value.data?.length ?? 0,
                        itemBuilder: (context, pos) {
                          SingListResponse item =
                              pageController.sings.value.data![pos];

                          return ItemGalleryCard(
                            isVideo: true,
                            imageUrl: item.thumbnail,
                            title: item.nPostTitle,
                            date: item.dPost,
                            actionButtonTitle:
                                "Sumber: \nwww.paudpedia.kemdikbud.go.id",
                            onItemTap: () {
                              Get.to(() => SingDetailPage(singId: item.iPost));
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
