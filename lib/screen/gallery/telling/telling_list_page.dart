import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/controller/gallery/telling_list_controller.dart';
import 'package:paudpedia_kemendikbud/models/gallery/telling/telling_list_response.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/component/item_book_card.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/telling/telling_detail_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart' as path;

class TellingListPage extends StatelessWidget {
  final FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
  TellingListController pageController =
      Get.put(TellingListController(paudRepository: Get.find()));

  TellingListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ToolBarWithProfile(
            imageBackground: "assets/images/banner_telling_room.png",
            textLeftLabel: "RUANG BERCERITA",
            onBackTap: () {
              Get.back();
            },
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: GetBuilder<TellingListController>(initState: (_) {
              pageController.setScreenWidth(getWidth(context).round());
            }, builder: (controller) {
              if (controller.viewState.value is ErrorScreenState) {
                return Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: bgOrange,
                      ),
                      onPressed: () {
                        controller.getTellingList();
                      },
                      child: Text("Coba lagi",
                          style: GoogleFonts.fredokaOne(color: Colors.white))),
                );
              }

              return Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: bgLightBlue),
                child: ListView.builder(
                    itemCount: pageController.tells.value.data?.length ?? 0,
                    itemBuilder: (context, pos) {
                      TellingListResponse item =
                          pageController.tells.value.data![pos];

                      return ItemBookCard(
                        imageUrl: item.thumbnail,
                        title: item.nPostTitle,
                        hasFlipperBook: item.nPostUrlflip.isNotEmpty,
                        onPreviewTap: () {
                          Get.to(() => TellingDetailPage(
                                pdfUrl: item.nPostPdf,
                                title: item.nPostTitle,
                              ));
                        },
                        onReadingTap: () {
                          openWebFlipperBook(
                              item.nPostUrlflip, item.nPostTitle);
                        },
                        onDownloadTap: () async {
                          pageController.downloadFile(
                              item.nPostPdf, await getFilePath(item.nPostPdf));
                        },
                      );
                    }),
              );
            }),
          ))
        ],
      )),
    );
  }

  void openWebFlipperBook(String url, String title) {
    Get.to(() => WebviewScaffold(
        url: url,
        withZoom: true,
        ignoreSSLErrors: true,
        appBar: AppBar(
            title: Text(title),
            backgroundColor: bgLightBlue,
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
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
