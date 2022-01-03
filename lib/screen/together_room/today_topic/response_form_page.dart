import 'dart:io';

import 'package:dio/dio.dart' as DIO;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/controller/forum/topic_response_controller.dart';
import 'package:paudpedia_kemendikbud/models/together_room/today_topic/form_response_state.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:path/path.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class ResponseFormPage extends StatelessWidget {
  final String postId;
  final FormResponseTopic postTypeCode;

  const ResponseFormPage(
      {Key? key, required this.postId, required this.postTypeCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
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
                      height: 10,
                    ),
                    Stack(children: [
                      Center(
                          child: Image.asset(
                              "assets/images/response_form_label.png")),
                      Positioned(
                          top: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.asset(
                            "assets/images/leaf.png",
                            fit: BoxFit.cover,
                            width: 30,
                          )),
                      Positioned(
                          top: 0,
                          left: 5,
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {
                              showDialogMainRules(context);
                            },
                            child: Image.asset(
                              "assets/images/burron_info.png",
                              fit: BoxFit.contain,
                              width: 30,
                            ),
                          ))
                    ]),
                    FormInputResponse(
                      postId: postId,
                      postTypeCode: postTypeCode,
                    )
                  ],
                ),
              ),
              Positioned(
                  left: 0,
                  bottom: 0,
                  child: Image.asset(
                    "assets/images/character_aldo.png",
                    width: 113,
                    height: 143,
                  )),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    "assets/images/character_ cici.png",
                    width: 113,
                    height: 143,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class FormInputResponse extends StatelessWidget {
  TopicResponseController pageController =
      Get.put(TopicResponseController(paudRepository: Get.find()));

  final String postId;
  final FormResponseTopic postTypeCode;
  TextEditingController respondController = new TextEditingController();
  TextEditingController articleTitleController = new TextEditingController();

  FormInputResponse({
    Key? key,
    required this.postId,
    required this.postTypeCode,
  }) : super(key: key);

  void subscribeViewState() {
    ever(pageController.viewState, (state) {
      if (state is LoadedScreenState) {
        respondController.clear();
      }
    });
  }

  void initResponseMainRulesDialog(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialogMainRules(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GetBuilder<TopicResponseController>(initState: (_) {
      subscribeViewState();
    }, dispose: (_) {
      articleTitleController.clear();
      respondController.clear();
    }, builder: (controller) {
      initResponseMainRulesDialog(context);

      return Container(
        margin: EdgeInsets.fromLTRB(22, 5, 22, 22),
        padding: EdgeInsets.all(19),
        decoration: BoxDecoration(
            color: bgLightBlue, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                  height: 300,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (postTypeCode == FormResponseTopic.TEXT)
                        TextField(
                          maxLines: null,
                          controller: articleTitleController,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: "Judul Artikel",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      SizedBox(
                        height: 7,
                      ),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(width: 1, color: Colors.black))),
                        child: TextField(
                          maxLines: null,
                          controller: respondController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: getHintSuggestion(),
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      )),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Obx(() =>
                              pageController.selectedFile.value.path.isNotEmpty
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.file(
                                          pageController.selectedFile.value,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.cover),
                                    )
                                  : SizedBox()),
                          SizedBox(
                            width: 30,
                          ),
                          showButtonForm(postTypeCode)
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(bgOrange),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 50)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18))),
                    onPressed: () {
                      checkResponseData();
                    },
                    child: Text("Kirim")),
              ),
            )
          ],
        ),
      );
    }));
  }

  String getHintSuggestion() {
    return postTypeCode == FormResponseTopic.TEXT
        ? "Isi Artikel"
        : postTypeCode == FormResponseTopic.IMAGE
            ? "Judul Gambar"
            : "Judul VIdeo";
  }

  Widget showButtonForm(FormResponseTopic state) {
    return state == FormResponseTopic.IMAGE || state == FormResponseTopic.TEXT
        ? GestureDetector(
            onTap: () {
              getFile(FileType.image).then((value) {
                if (value != null) {
                  pageController.setSelectedFile(value);
                  pageController.setFileResponse(value);
                }
              });
            },
            child: Image.asset("assets/images/button_image_add.png"),
          )
        : GestureDetector(
            onTap: () async {
              File? vidoeFile = await getFile(FileType.video);
              String? videoPath =
                  await getThumbnailImageFromVideo(vidoeFile?.path ?? "");
              File thumbNailFile = File(videoPath ?? "");

              if (vidoeFile != null) {
                pageController.setSelectedFile(thumbNailFile);
                pageController.setFileResponse(vidoeFile);
              }
            },
            child: Image.asset("assets/images/button_video_add.png"),
          );
  }

  Future<File?> getFile(FileType type) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(type: type);

    if (result != null) {
      return File(result.files.single.path!);
    }
  }

  Future<String?> getThumbnailImageFromVideo(String url) async {
    return await VideoThumbnail.thumbnailFile(
        video: url,
        thumbnailPath: (await getTemporaryDirectory()).path,
        imageFormat: ImageFormat.JPEG,
        maxWidth: 128,
        quality: 25);
  }

  void postResponse() async {
    String filePath = pageController.fileResponse.path;

    pageController.postTopicResponse(DIO.FormData.fromMap({
      "postId": postId,
      "title": postTypeCode == FormResponseTopic.TEXT
          ? articleTitleController.text
          : respondController.text,
      "respond": postTypeCode == FormResponseTopic.IMAGE ||
              postTypeCode == FormResponseTopic.VIDEO
          ? ""
          : respondController.text,
      if (postTypeCode == FormResponseTopic.IMAGE ||
          (postTypeCode == FormResponseTopic.TEXT && filePath.isNotEmpty))
        "image": await DIO.MultipartFile.fromFile(filePath,
            filename: basename(filePath),
            contentType:
                MediaType.parse(lookupMimeType(filePath) ?? 'image/*')),
      if (postTypeCode == FormResponseTopic.VIDEO)
        "video": await DIO.MultipartFile.fromFile(filePath,
            filename: basename(filePath),
            contentType:
                MediaType.parse(lookupMimeType(filePath) ?? 'video/*')),
    }));
  }

  void checkResponseData() {
    if (respondController.text.isEmpty ||
        (postTypeCode == FormResponseTopic.TEXT &&
            articleTitleController.text.isEmpty)) {
      showDialogError(message: "semua kolom respon wajib diisi");
    } else if ((postTypeCode == FormResponseTopic.IMAGE ||
            postTypeCode == FormResponseTopic.VIDEO) &&
        pageController.fileResponse.path.isEmpty) {
      showDialogError(message: "Wajib mencatumkan file gammbar atau video");
    } else {
      postResponse();
    }
  }
}

void showDialogMainRules(BuildContext context) {
  final String contentMainRules = """<P><strong>Aturan main :</strong></p>
  <ol>
  <li>Anda hanya dapat mengirimkan 1 respon untuk setiap tantangan yang diberikan pada kanal Topik Bulan Ini.</li>
  <li>Tombol respon akan otomatis hilang, jika Anda telah mengirimkan respon.</li>
  <li>Respon yang telah disetujui oleh Admin Paudpedia akan ditampilkan di layar semua pengguna</li>
  <li>Respon yang dilaporkan tidak layak oleh pengguna lain akan otomatis hilang dari layar semua pengguna, dan dapat digantikan dengan respon baru.</li>
  </ol>""";

  showDialog(
      context: context,
      builder: (context) => AlertDialog(
          content: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Builder(builder: (context) {
                return Column(mainAxisSize: MainAxisSize.min, children: [
                  Flexible(child: Html(data: contentMainRules)),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(bgOrange),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 50)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                      child: Text("Ok",
                          style: GoogleFonts.fredokaOne(
                            color: Colors.white,
                          )))
                ]);
              }))));
}
