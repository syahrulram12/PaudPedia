import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_without_profile.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class ReadingDetailPage extends StatefulWidget {
  final String title;
  final String thumbnail;
  final String pdfUrl;

  const ReadingDetailPage(
      {Key? key,
      required this.title,
      required this.pdfUrl,
      required this.thumbnail})
      : super(key: key);

  @override
  _ReadingDetailPageState createState() => _ReadingDetailPageState();
}

class _ReadingDetailPageState extends State<ReadingDetailPage> {
  PDFDocument? pdf;

  @override
  void initState() {
    super.initState();
    initiatePdf();
  }

  void initiatePdf() async {
    pdf = await PDFDocument.fromURL(widget.pdfUrl);
    setState(() {});
  }

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
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22), color: bgLightBlue),
              child: pdf != null
                  ? PDFViewer(
                      document: pdf!,
                      showNavigation: false,
                      showPicker: false,
                    )
                  : Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      )),
    );
  }
}
