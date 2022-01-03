import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/event_detail_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/together_room/Event/event_detail_response.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/paud_date_formarter.dart';

class EventDetailPage extends StatefulWidget {
  final String eventId;

  EventDetailPage({Key? key, this.eventId = "272"}) : super(key: key);
  @override
  _EventDetailPageState createState() => _EventDetailPageState();
}

class _EventDetailPageState extends State<EventDetailPage> {
  EventDetailController pageController =
      Get.put(EventDetailController(paudRepository: Get.find()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            ToolBarWithProfile(
              imageBackground: "assets/images/banner_forum_agenda.png",
              textLeftLabel: "AGENDA",
              onBackTap: () {
                Get.back();
              },
              isShowExit: true,
            ),
            GetBuilder<EventDetailController>(
                init: pageController,
                initState: (state) {
                  pageController.setEventId(widget.eventId);
                },
                builder: (controller) {
                  if (controller.viewState.value is ErrorScreenState) {
                    return Center(
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: bgOrange,
                          ),
                          onPressed: () {
                            controller.getEventDetail(widget.eventId);
                          },
                          child: Text("Coba lagi",
                              style:
                                  GoogleFonts.fredokaOne(color: Colors.white))),
                    );
                  }

                  EventDetailResponse? event =
                      pageController.eventDetail.value.data;

                  return Stack(
                    fit: StackFit.loose,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(23, 10, 33, 10),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: bgLightBlue,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            EventDetailImage(
                              imageUrl: event?.nPostImage ?? "",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            EventDetailInfo(
                              event: event,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 0,
                          child: Image.asset("assets/images/leaf.png",
                              fit: BoxFit.cover)),
                    ],
                  );
                }),
          ],
        ),
      )),
    );
  }
}

class EventDetailImage extends StatelessWidget {
  final String imageUrl;

  const EventDetailImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: imageUrl.isEmpty
          ? Image.asset("assets/images/agenda_menu.png", fit: BoxFit.cover)
          : CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.cover),
    );
  }
}

class EventDetailInfo extends StatelessWidget {
  final EventDetailResponse? event;

  const EventDetailInfo({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: cardLightBlue, borderRadius: BorderRadius.circular(9)),
      child: Column(
        children: [
          Text(
            "Judul Kegiatan",
            style: GoogleFonts.robotoCondensed(fontWeight: FontWeight.w700),
          ),
          textLabelWhiteCorner(event?.nPostTitle ?? ""),
          SizedBox(
            height: 10,
          ),
          Text("Hari & Tanggal",
              style: GoogleFonts.robotoCondensed(fontWeight: FontWeight.w700)),
          textLabelWhiteCorner(
              "${PaudDateFormater.formatDateFor(PaudDateFormater.FORMAT_V3, "${event?.dPostPublish} ${event?.tPostPublish}")} "),
          SizedBox(
            height: 10,
          ),
          Text("Keterangan",
              style: GoogleFonts.robotoCondensed(fontWeight: FontWeight.w700)),
          textHtmlWhiteCorner(event?.ePostContent ?? ""),
        ],
      ),
    );
  }

  Widget textLabelWhiteCorner(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Center(child: Text(text)),
    );
  }

  Widget textHtmlWhiteCorner(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Center(child: Html(data: text)),
    );
  }
}
