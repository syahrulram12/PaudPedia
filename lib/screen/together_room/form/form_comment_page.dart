import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/forum_comment_controller.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class FormCommentPage extends StatelessWidget {
  final String postId;

  const FormCommentPage({Key? key, this.postId = "283"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
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
                    child: Image.asset("assets/images/comment_form_label.png")),
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
              FormInputComment(
                postId: postId,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FormInputComment extends StatelessWidget {
  ForumCommentController pageController =
      Get.put(ForumCommentController(paudRepository: Get.find()));
  String comment = "";
  String postId = "";

  FormInputComment({Key? key, required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(children: [
        SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(22, 5, 22, 22),
            padding: EdgeInsets.all(19),
            decoration: BoxDecoration(
                color: bgLightBlue, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Container(
                    height: 400,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(bottom: 30),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Colors.black))),
                          child: TextField(
                            maxLines: null,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Apa yang anda pikirkan?",
                                hintStyle: TextStyle(color: Colors.grey)),
                            onChanged: (value) {
                              comment = value;
                            },
                          ),
                        )),
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
                                MaterialStateProperty.all(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all(bgOrange),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 50)),
                            textStyle: MaterialStateProperty.all(TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18))),
                        onPressed: () {
                          postComment();
                        },
                        child: Text("Kirim")),
                  ),
                ),
              ],
            ),
          ),
        ),
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
      ]),
    );
  }

  void postComment() {
    if (comment.isEmpty) {
      showDialogError(message: "Kolom komentar wajib diisi");
      return;
    }

    pageController.postComment(
        DIO.FormData.fromMap({"postId": postId, "comment": comment}));
  }
}
