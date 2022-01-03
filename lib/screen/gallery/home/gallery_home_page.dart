import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/playing/playing_video_list_page.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/reading/reading_list_page.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/sing/sing_list_page.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/telling/telling_list_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:simple_tooltip/simple_tooltip.dart';

class GalleryHomePage extends StatefulWidget {
  const GalleryHomePage({Key? key}) : super(key: key);

  @override
  _GalleryHomePageState createState() => _GalleryHomePageState();
}

class _GalleryHomePageState extends State<GalleryHomePage> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            width: getWidth(context),
            height: getHeight(context),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/background_gallery_home.png"),
                    fit: BoxFit.cover)),
          ),
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
                ballonPadding: const EdgeInsets.all(5),
                content: Text(
                  "Ragam informasi untuk menstimulasi tumbuh kembang Anak",
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
            top: getHeight(context) / 3,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GalleryMenuWidget(
                      imageUrl: "assets/images/button_telling_room.png",
                      label: "RUANG\n BERCERITA",
                      onMenuTap: () {
                        Get.to(() => TellingListPage());
                      },
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    GalleryMenuWidget(
                      imageUrl: "assets/images/button_singing_room.png",
                      label: "RUANG\n BERNYANYI",
                      onMenuTap: () {
                        Get.to(() => SingListPage());
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GalleryMenuWidget(
                        imageUrl: "assets/images/button_playing_room.png",
                        label: "RUANG\n BERMAIN",
                        onMenuTap: () {
                          Get.to(() => PlayingVideoListPage());
                        }),
                    SizedBox(
                      width: 60,
                    ),
                    GalleryMenuWidget(
                      imageUrl: "assets/images/button_reading_room.png",
                      label: "RUANG\n BACA",
                      onMenuTap: () {
                        Get.to(() => ReadingListPage());
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class GalleryMenuWidget extends StatelessWidget {
  final String imageUrl;
  final String label;
  final Function() onMenuTap;

  const GalleryMenuWidget({
    Key? key,
    required this.imageUrl,
    required this.label,
    required this.onMenuTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onMenuTap,
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            width: 105,
            height: 105,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.fredokaOne(color: textDarkBlue, fontSize: 18),
          )
        ],
      ),
    );
  }
}
