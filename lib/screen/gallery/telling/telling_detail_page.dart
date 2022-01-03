import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_without_profile.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class TellingDetailPage extends StatefulWidget {
  final String pdfUrl;
  final String title;

  const TellingDetailPage({Key? key, required this.pdfUrl, required this.title})
      : super(key: key);

  @override
  _TellingDetailPageState createState() => _TellingDetailPageState();
}

class _TellingDetailPageState extends State<TellingDetailPage> {
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
            imageBackground: "assets/images/banner_telling_room.png",
            textLeftLabel: "RUANG BERCERITA",
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
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
                decoration: BoxDecoration(
                    color: bgLightBlue,
                    borderRadius: BorderRadius.circular(22)),
                child: pdf != null
                    ? PDFViewer(
                        document: pdf!,
                        showNavigation: false,
                        showPicker: false,
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
