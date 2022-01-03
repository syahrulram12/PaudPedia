import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/screen/community/creative_teacher/creative_teacher_list_page.dart';
import 'package:paudpedia_kemendikbud/screen/community/parent_sharing/parent_sharing_list_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:simple_tooltip/simple_tooltip.dart';

class CommunityHomePage extends StatefulWidget {
  const CommunityHomePage({Key? key}) : super(key: key);

  @override
  _CommunityHomePageState createState() => _CommunityHomePageState();
}

class _CommunityHomePageState extends State<CommunityHomePage> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: getWidth(context),
      height: getHeight(context),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_community_home.png"),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              top: 10,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Image.asset("assets/images/back.png"),
              )),
          Positioned(
              bottom: 10,
              right: 10,
              child: SimpleTooltip(
                show: isShow,
                minWidth: 100,
                maxWidth: 200,
                arrowLength: 10,
                borderWidth: 0,
                targetCenter: Offset(200, 0),
                content: Text(
                  "Fasilitas komunikasi guru, orangtua dan pegiat PAUD",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isShow = !isShow;
                    });
                  },
                  child: Image.asset("assets/images/burron_info.png"),
                ),
              )),
          Positioned(
              left: 0,
              right: 0,
              top: getHeight(context) / 3,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => CreativeTeacherListPage());
                    },
                    child: Image.asset(
                      "assets/images/buuton_creative_teacher.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "GURU KREATIF",
                    style: GoogleFonts.fredokaOne(
                        color: textDarkBlue, fontSize: 18),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ParentSharingListPage());
                    },
                    child: Image.asset(
                      "assets/images/button_parent_sharing.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "ORANG TUA BERBAGI",
                    style: GoogleFonts.fredokaOne(
                        color: textDarkBlue, fontSize: 18),
                  )
                ],
              ))
        ],
      ),
    )));
  }
}
