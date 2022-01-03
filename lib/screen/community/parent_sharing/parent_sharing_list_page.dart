import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_without_profile.dart';
import 'package:paudpedia_kemendikbud/controller/community/parent_sharing_list_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/components/item_common_card.dart';
import 'package:paudpedia_kemendikbud/models/community/detail_type.dart';
import 'package:paudpedia_kemendikbud/models/community/parent_sharing/parent_sharing_response.dart';
import 'package:paudpedia_kemendikbud/screen/community/community_detail/community_detail_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class ParentSharingListPage extends StatelessWidget {
  ParentSharingListController pageController =
      Get.put(ParentSharingListController(paudRepository: Get.find()));

  ParentSharingListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ToolBarWithoutProfile(
            imageBackground: "assets/images/banner_parent_sharing.png",
            textLeftLabel: "ORANG TUA BERBAGI",
            onBackTap: () {
              Get.back();
            },
          ),
          Expanded(child:
              GetBuilder<ParentSharingListController>(builder: (controller) {
            if (controller.viewState.value is ErrorScreenState) {
              return Center(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: bgOrange,
                    ),
                    onPressed: () {
                      controller.getParentSharingList();
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
                        pageController.sharingList.value.data?.length ?? 0,
                    itemBuilder: (_, pos) {
                      ParentSharingResponse item =
                          pageController.sharingList.value.data![pos];

                      return ItemCommonCard(
                        imageUrl: item.thumbnail,
                        isVideo: item.type == DetailType.VIDEO,
                        titleArticle: item.nPostTitle,
                        dateArticle: item.dPost,
                        buttonTitle: "Sumber:\nwww.paudpedia.kemdikbud.go.id",
                        onItemClick: () {
                          Get.to(() => CommunityDetailPage(
                                id: item.iPost,
                                headerLabel: "ORANG TUA BERBAGI",
                              ));
                        },
                      );
                    }),
              ),
            );
          }))
        ],
      )),
    );
  }
}
