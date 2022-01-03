import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/forum_report_controller.dart';
import 'package:paudpedia_kemendikbud/models/together_room/report_source_type.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:paudpedia_kemendikbud/utils/paud_date_formarter.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';

class FormReportPage extends StatelessWidget {
  final String commentId;
  final String name;
  final String title;
  final String date;
  final ReportSourceType source;
  final String imageUrl;

  const FormReportPage(
      {Key? key,
      this.commentId = "87",
      required this.name,
      required this.title,
      required this.date,
      required this.imageUrl,
      this.source = ReportSourceType.FORUM})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            ToolBarWithProfile(
              imageBackground: "assets/images/banner_forum_report.png",
              isShowExit: true,
              onBackTap: () {
                Get.back();
              },
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    width: 152,
                    height: 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: bgLightBlue,
                    ),
                    child: Center(
                        child: Text("Form Laporan",
                            style: GoogleFonts.fredokaOne(
                                fontSize: 18, color: Colors.white))),
                  ),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/leaf.png",
                    )),
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 20,
                      right: 20,
                      bottom: 30,
                      child: FormInputReport(
                        commentId: commentId,
                        name: name,
                        title: title,
                        date: date,
                        imageUrl: imageUrl,
                        source: source,
                      )),
                  Positioned(
                    left: 0,
                    bottom: 10,
                    child: Image.asset(
                      "assets/images/character_aldo.png",
                      height: 126,
                      width: 102,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 10,
                    child: Image.asset(
                      "assets/images/character_ cici.png",
                      height: 126,
                      width: 102,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class FormInputReport extends StatelessWidget {
  ForumReportController pageController =
      Get.put(ForumReportController(paudRepository: Get.find()));

  final String commentId;
  final String name;
  final String title;
  final String date;
  final String imageUrl;
  final ReportSourceType source;
  String reportContent = "";

  FormInputReport(
      {Key? key,
      required this.commentId,
      required this.name,
      required this.title,
      required this.date,
      required this.imageUrl,
      required this.source})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: getHeight(context) - 270,
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27), color: bgLightBlue),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getPhotoProfile(imageUrl),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: TextStyle(fontWeight: FontWeight.w800)),
                      Text(title, style: TextStyle(fontSize: 12)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          PaudDateFormater.formatDateFor(
                              PaudDateFormater.FORMAT_V1, date),
                          style: TextStyle(fontSize: 12)),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(11),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19)),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintMaxLines: 2,
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                      hintText:
                          "Apa yang akan anda laporkan dari pengguna ini?"),
                  onChanged: (value) {
                    reportContent = value;
                  },
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        sendReport();
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: bgOrange,
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 5)),
                      child: Text("Kirim",
                          style: GoogleFonts.fredokaOne(
                              fontSize: 30, color: Colors.white))),
                ))
          ],
        ),
      ),
    );
  }

  Widget getPhotoProfile(String imageUrl) {
    return imageUrl.isNotEmpty
        ? Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Colors.green, width: 2)),
            child: CircleAvatar(
                radius: 50, backgroundImage: NetworkImage(imageUrl)),
          )
        : Image.asset(
            "assets/images/placeholder_profile.png",
            width: 45,
            height: 45,
            fit: BoxFit.cover,
          );
  }

  void sendReport() {
    if (reportContent.isEmpty) {
      showDialogError(message: "Kolom laporkan wajib diisi");
      return;
    }

    pageController.sendReport(DIO.FormData.fromMap({
      "commentId": commentId,
      "report": reportContent,
      "source": source.type
    }));
  }
}
