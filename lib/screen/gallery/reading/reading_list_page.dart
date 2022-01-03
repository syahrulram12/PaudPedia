import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_without_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/controller/gallery/reading_list_controller.dart';
import 'package:paudpedia_kemendikbud/models/gallery/reading/reading_list_response.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/component/item_book_card.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/reading/reading_detail_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:path/path.dart' as path;
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class ReadingListPage extends StatelessWidget {
  ReadingListController pageController =
      Get.put(ReadingListController(paudRepository: Get.find()));

  ReadingListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        ToolBarWithoutProfile(
          imageBackground: "assets/images/banner_reading_room.png",
          textLeftLabel: "RUANG BACA",
          onBackTap: () {
            Get.back();
          },
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: GetBuilder<ReadingListController>(initState: (_) {
            pageController.setScreenWidth(getWidth(context).round());
          }, builder: (controller) {
            if (controller.viewState.value is ErrorScreenState) {
              return Center(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: bgOrange,
                    ),
                    onPressed: () {
                      controller.getReadingList();
                    },
                    child: Text("Coba lagi",
                        style: GoogleFonts.fredokaOne(color: Colors.white))),
              );
            }

            return Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                  color: bgLightBlue, borderRadius: BorderRadius.circular(22)),
              child: ListView.builder(
                  itemCount: pageController.reads.value.data?.length ?? 0,
                  itemBuilder: (context, pos) {
                    ReadingListResponse item =
                        pageController.reads.value.data![pos];

                    return ItemBookCard(
                        imageUrl: item.thumbnail,
                        title: item.nPostTitle,
                        hasFlipperBook: item.nPostUrlflip.isNotEmpty,
                        onPreviewTap: () {
                          Get.to(ReadingDetailPage(
                            title: item.nPostTitle,
                            thumbnail: item.thumbnail,
                            pdfUrl: item.nPostPdf,
                          ));
                        },
                        onDownloadTap: () async {
                          pageController.downloadFile(
                              item.nPostPdf, await getFilePath(item.nPostPdf));
                        },
                        onReadingTap: () {
                          openWebFlipperBook(item.nPostUrlflip);
                        });
                  }),
            );
          }),
        ))
      ],
    )));
  }

  void openWebFlipperBook(String url) async {
    Get.to(() => WebviewScaffold(
        url: url,
        withZoom: true,
        withLocalStorage: true,
        appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.red),
                onPressed: () {
                  Get.back();
                })),
        initialChild: Container(
          color: Colors.white,
          child: const Center(
            child: Text('Waiting.....'),
          ),
        )));
  }

  Future<String> getFilePath(String url) async {
    var status = await Permission.storage.status;

    if (!status.isGranted) {
      await Permission.storage.request();
    }

    String filePath;
    if (Platform.isAndroid) {
      filePath = "/storage/emulated/0/Download/${path.basename(url)}";
    } else {
      filePath =
          "${(await getExternalStorageDirectories(type: StorageDirectory.documents))?.first.path}/${path.basename(url)}";
    }

    return filePath;
  }
}
