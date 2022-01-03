import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_without_profile.dart';
import 'package:paudpedia_kemendikbud/components/video_attachment_widget.dart';
import 'package:paudpedia_kemendikbud/models/together_room/login/forum_login_user_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/report_source_type.dart';
import 'package:paudpedia_kemendikbud/models/together_room/topiclist/topic_reply_response.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/form/form_report_page.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';

class TopicResponseDetail extends StatelessWidget {
  final TopicReplyResponse response;
  final PaudRepository repository = Get.find();

  TopicResponseDetail({Key? key, required this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgLightBlue,
        body: SafeArea(
            child: Container(
          color: Colors.white,
          child: LayoutBuilder(builder: (context, constraint) {
            return Column(
              children: [
                ToolBarWithoutProfile(
                  imageBackground: "assets/images/banner_current_topic.png",
                  textLeftLabel: "TOPIK BULAN INI",
                  onBackTap: () {
                    Get.back();
                  },
                ),
                FutureBuilder<ForumLoginUserResponse?>(
                  future: repository.getUserInfo(),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      return Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 13, vertical: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: bgLightBlue,
                              borderRadius: BorderRadius.circular(22)),
                          child: SingleChildScrollView(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  minHeight: constraint.maxHeight - 200),
                              child: IntrinsicHeight(
                                child: Column(
                                  children: [
                                    Text(response.nRespondTitle,
                                        style: GoogleFonts.fredokaOne(
                                            color: textDarkBlue, fontSize: 18)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ResponseAndUserAction(
                                      response: response,
                                      snapshot: snapshot,
                                    ),
                                    if (response.nRespondImage.isNotEmpty)
                                      CachedNetworkImage(
                                        imageUrl: response.nRespondImage,
                                        height: 182,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Html(data: response.eRespondContent),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    if (response.nRespondVideo.isNotEmpty)
                                      VideoAttachment(
                                          videoUrl: response.nRespondVideo)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ));
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                )
              ],
            );
          }),
        )));
  }
}

class ResponseAndUserAction extends StatelessWidget {
  const ResponseAndUserAction(
      {Key? key, required this.response, required this.snapshot})
      : super(key: key);

  final TopicReplyResponse response;
  final AsyncSnapshot<ForumLoginUserResponse?> snapshot;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Text(response.nUser)),
        SizedBox(
          width: 10,
        ),
        if (snapshot.data?.iUser.orEmpty() != response.iUser)
          TextButton(
            onPressed: () {
              Get.to(() => FormReportPage(
                    commentId: response.iPost,
                    name: response.nUser,
                    title: response.nRespondTitle,
                    date: response.dRespond,
                    imageUrl: response.nUserPict,
                    source: ReportSourceType.TOPIC,
                  ));
            },
            child: Text("Laporkan", style: TextStyle(color: Colors.white)),
            style: TextButton.styleFrom(
              minimumSize: Size(50, 5),
              padding: EdgeInsets.zero,
              fixedSize: Size(80, 25),
              backgroundColor: bgOrange,
            ),
          ),
      ],
    );
  }
}
