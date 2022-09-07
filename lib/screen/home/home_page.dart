import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/models/home/tooltip_info_state.dart';
import 'package:paudpedia_kemendikbud/screen/community/community_home/community_home_page.dart';
import 'package:paudpedia_kemendikbud/screen/gallery/home/gallery_home_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/login/together_room_login_page.dart';
import 'package:paudpedia_kemendikbud/screen/menu/menu.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:simple_tooltip/simple_tooltip.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TooltipInfoState tooltipState = TooltipInfoState.NONE;

  String greetingText = """Halo Sobat PAUD,
Aplikasi Paudpedia adalah
aplikasi yang dikembangkan oleh
Direktorat Pendidikan Anak Usia
Dini Kementerian Pendidikan,
Kebudayaan, Riset dan Teknologi 
dengan tujuan sebagai
informasi untuk guru dan orang 
tua anak usia dini. Di dalamnya 
memuat beberapa kanal yang 
disesuaikan dengan kebutuhan2
pembelajaran saat ini.
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/home_background.png"),
                    fit: BoxFit.fill)),
            child: OrientationBuilder(builder: (context, orientation) {
              print(MediaQuery.of(context).orientation);
              if (orientation == Orientation.portrait) {
                return Stack(
                  children: [
                    Positioned(
                      top: (getHeight(context) / 3) / 1.8,
                      left: 0,
                      right: 0,
                      child: Text(
                        greetingText,
                        style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(color: Colors.white, height: 1.5)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned(
                      bottom: (getHeight(context) / 4),
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: MainMenuItem(
                                imageUrl: 'assets/images/community_menu.png',
                                message:
                                    "Ragam informasi untuk menstimulasi tumbuh kembang Anak",
                                isShow:
                                    tooltipState == TooltipInfoState.COMMUNITY,
                                onInfoClick: () {
                                  updateStateTooltipInfo(
                                      TooltipInfoState.COMMUNITY);
                                },
                                onMenuClick: () {
                                  Get.to(() => CommunityHomePage());
                                },
                              ),
                            ),
                            Flexible(
                              child: MainMenuItem(
                                imageUrl: 'assets/images/gallery_menu.png',
                                message:
                                    "Media publikasi produk guru, orang tua dan pegiat PAUD",
                                isShow:
                                    tooltipState == TooltipInfoState.GALLERY,
                                onInfoClick: () {
                                  updateStateTooltipInfo(
                                      TooltipInfoState.GALLERY);
                                },
                                onMenuClick: () {
                                  Get.to(() => GalleryHomePage());
                                },
                              ),
                            ),
                            Flexible(
                              child: MainMenuItem(
                                imageUrl: 'assets/images/study_menu.png',
                                message:
                                    'Fasilitas komunikasi guru, orangtua dan pegiat PAUD',
                                isShow: tooltipState == TooltipInfoState.FORUM,
                                onInfoClick: () {
                                  setState(() {
                                    updateStateTooltipInfo(
                                        TooltipInfoState.FORUM);
                                  });
                                },
                                onMenuClick: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TogetherRoomLoginPage(),
                                          settings: RouteSettings(
                                              name: TogetherRoomLoginPage()
                                                  .toStringShort())));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 13,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _lunchUrl("");
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/twitter.svg',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _lunchUrl("");
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/twitter.svg',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _lunchUrl("");
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/facebook.svg',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _lunchUrl("");
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/twitter.svg',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "paudpedia",
                                style: TextStyle(
                                    color: mainBlue,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ))
                  ],
                );
              } else {
                return Text("Landscape");
              }
            })));
  }

  void updateStateTooltipInfo(TooltipInfoState state) {
    setState(() {
      if (tooltipState == state) {
        tooltipState = TooltipInfoState.NONE;
      } else {
        tooltipState = state;
      }
    });
  }

  void _lunchUrl(String urlString) async {
    if (await canLaunch(urlString)) {
      await launch(urlString);
    } else {
      showDialogError(message: "Can't navigate to the page");
    }
  }
}

class MainMenuItem extends StatelessWidget {
  final String imageUrl;
  final String message;
  final Function()? onMenuClick;
  final Function()? onInfoClick;
  final bool isShow;

  const MainMenuItem(
      {Key? key,
      required this.imageUrl,
      required this.message,
      this.isShow = false,
      this.onMenuClick,
      this.onInfoClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 10,
            child: GestureDetector(
                onTap: onMenuClick,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SimpleTooltip(
              show: isShow,
              minWidth: 90,
              maxWidth: 180,
              arrowLength: 10,
              borderWidth: 0,
              arrowTipDistance: 70,
              ballonPadding: const EdgeInsets.all(5),
              content: Text(
                message,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none),
              ),
              child: GestureDetector(
                  onTap: () {
                    onInfoClick?.call();
                  },
                  child: Image.asset(
                    "assets/images/burron_info.png",
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class MainMenuItem2 extends StatelessWidget {
  final String imageUrl;
  final String message;
  final Function()? onMenuClick;
  final Function()? onInfoClick;
  final bool isShow;

  const MainMenuItem2(
      {Key? key,
      required this.imageUrl,
      required this.message,
      this.isShow = false,
      this.onMenuClick,
      this.onInfoClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GestureDetector(
                onTap: onMenuClick,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                )),
          ),
        ],
      ),
    );
  }
}
