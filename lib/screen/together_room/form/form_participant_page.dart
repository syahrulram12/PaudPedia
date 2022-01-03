import 'dart:io';

import 'package:dio/dio.dart' as DIO;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/forum_participant_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/together_room/subjectlist/forum_subject_response.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';
import 'package:path/path.dart' as path;
import 'package:video_thumbnail/video_thumbnail.dart';

class FormParticipantPage extends StatelessWidget {
  ForumSubjectResponse? subject;

  late TextEditingController subjectController;
  late TextEditingController titleController;
  late TextEditingController contentController;

  ForumParticipantController pageController =
      Get.put(ForumParticipantController(paudRepository: Get.find()));

  FormParticipantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: GetBuilder<ForumParticipantController>(
            init: pageController,
            global: false,
            initState: (_) {
              subjectController = new TextEditingController();
              titleController = new TextEditingController();
              contentController = new TextEditingController();

              ever(pageController.viewState, (state) {
                if (state is LoadedScreenState) {
                  titleController.clear();
                  subjectController.clear();
                  contentController.clear();
                }
              });
            },
            dispose: (_) {
              titleController.dispose();
              subjectController.dispose();
              contentController.dispose();
              pageController.clearData();
            },
            builder: (controller) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ToolBarWithProfile(
                    imageBackground: "assets/images/banner_forum_together.png",
                    onBackTap: () {
                      Get.back();
                    },
                    isShowExit: true,
                    textLeftLabel: "FORUM BERSAMA",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(children: [
                    Center(
                        child: Image.asset(
                            "assets/images/participant_form_label.png")),
                    Positioned(
                        top: 0,
                        right: 0,
                        bottom: 0,
                        child: Image.asset(
                          "assets/images/leaf.png",
                          fit: BoxFit.cover,
                          width: 30,
                        ))
                  ]),
                  Expanded(
                    child: Stack(children: [
                      SingleChildScrollView(
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(22, 10, 22, 22),
                          padding: EdgeInsets.all(19),
                          decoration: BoxDecoration(
                              color: bgLightBlue,
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            children: [
                              Container(
                                  height: 400,
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(35)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.black))),
                                        child: TypeAheadField<
                                                ForumSubjectResponse>(
                                            textFieldConfiguration:
                                                TextFieldConfiguration(
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "Cari Subject"),
                                                    controller:
                                                        subjectController),
                                            suggestionsCallback: (pattern) {
                                              return pageController
                                                      .listSubject.value.data
                                                      ?.where((element) => element
                                                          .nSubject
                                                          .toLowerCase()
                                                          .contains(pattern
                                                              .toLowerCase())) ??
                                                  <ForumSubjectResponse>[];
                                            },
                                            itemBuilder: (_, suggestion) {
                                              return ListTile(
                                                title:
                                                    Text(suggestion.nSubject),
                                              );
                                            },
                                            onSuggestionSelected: (suggestion) {
                                              subject = suggestion;
                                              subjectController.text =
                                                  suggestion.nSubject.orEmpty();
                                            }),
                                      ),
                                      TextField(
                                        maxLines: null,
                                        controller: titleController,
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            border: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red,
                                                    width: 2)),
                                            hintText: "Judul",
                                            hintStyle:
                                                TextStyle(color: Colors.grey)),
                                      ),
                                      Expanded(
                                          flex: 3,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 1,
                                                        color: Colors.black))),
                                            child: TextField(
                                              maxLines: null,
                                              controller: contentController,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Isi",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey)),
                                            ),
                                          )),
                                      Obx(
                                        () => SizedBox(
                                          height: pageController
                                                      .fileImageSelected
                                                      .value
                                                      .path
                                                      .isEmpty ||
                                                  pageController
                                                      .fileVideoSelected
                                                      .value
                                                      .path
                                                      .isEmpty
                                              ? 10
                                              : 0,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(children: [
                                              Obx(() => pageController
                                                      .fileImageSelected
                                                      .value
                                                      .path
                                                      .isNotEmpty
                                                  ? FileAttachment(
                                                      fileSelected:
                                                          pageController
                                                              .fileImageSelected
                                                              .value)
                                                  : SizedBox()),
                                              GestureDetector(
                                                onTap: () {
                                                  getFile(FileType.image)
                                                      .then((file) {
                                                    pageController
                                                        .setFileImageSelected(
                                                            file);
                                                    pageController
                                                        .setFileImageAttachment(
                                                            file);
                                                  });
                                                },
                                                child: Image.asset(
                                                  "assets/images/button_image_add.png",
                                                  height: 25,
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ]),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Obx(() => pageController
                                                        .fileVideoSelected
                                                        .value
                                                        .path
                                                        .isNotEmpty
                                                    ? FileAttachment(
                                                        fileSelected:
                                                            pageController
                                                                .fileVideoSelected
                                                                .value)
                                                    : SizedBox()),
                                                GestureDetector(
                                                  onTap: () async {
                                                    File? selectedFile =
                                                        await getFile(
                                                            FileType.video);
                                                    String? thumbnailPath =
                                                        await getThumbnailImageFromVideo(
                                                            selectedFile
                                                                    ?.path ??
                                                                "");
                                                    File thumbnailVideo = File(
                                                        thumbnailPath ?? "");

                                                    if (selectedFile != null) {
                                                      pageController
                                                          .setFileVideoSelected(
                                                              thumbnailVideo);
                                                      pageController
                                                          .setFileVideoAttachment(
                                                              selectedFile);
                                                    }
                                                  },
                                                  child: Image.asset(
                                                    "assets/images/button_video_add.png",
                                                    height: 25,
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Center(
                                  child: TextButton(
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  bgOrange),
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.symmetric(
                                                  horizontal: 50)),
                                          textStyle: MaterialStateProperty.all(
                                              TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18))),
                                      onPressed: () {
                                        sendForm();
                                      },
                                      child: Text(
                                        "Kirim",
                                        style: GoogleFonts.fredokaOne(
                                            fontSize: 25),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ...getCharacterWidget()
                    ]),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> getCharacterWidget() {
    return [
      Positioned(
          left: -10,
          bottom: 0,
          child: Image.asset(
            "assets/images/character_ines.png",
            width: 113,
            height: 143,
          )),
      Positioned(
          right: -10,
          bottom: 0,
          child: Image.asset(
            "assets/images/character_beni.png",
            width: 113,
            height: 143,
          ))
    ];
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

  void sendForm() async {
    if (titleController.text.isEmpty ||
        contentController.text.isEmpty ||
        subjectController.text.isEmpty) {
      showDialogError(message: "Semua field wajib diisi");
      return;
    }

    String subjectCode;

    if (subjectController.text.isNotEmpty) {
      subjectCode = subjectController.text;
    } else {
      subjectCode = subject?.iSubject ??
          pageController.listSubject.value.data?.first.iSubject ??
          "";
    }

    pageController.submitParticipant(DIO.FormData.fromMap({
      "i_subject": subjectCode,
      "title": titleController.text,
      "content": contentController.text,
      "subject": subjectController.text,
      if (pageController.fileImageAttachment != null)
        "image": await DIO.MultipartFile.fromFile(
            pageController.fileImageAttachment!.path,
            filename: path.basename(pageController.fileImageAttachment!.path)),
      if (pageController.fileVideoAttachment != null)
        "video": await DIO.MultipartFile.fromFile(
            pageController.fileVideoAttachment!.path,
            filename: path.basename(pageController.fileVideoAttachment!.path)),
    }));
  }
}

class FileAttachment extends StatelessWidget {
  const FileAttachment({Key? key, required this.fileSelected})
      : super(key: key);

  final File fileSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.file(
            fileSelected,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          )),
    );
  }
}
