import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_without_profile.dart';
import 'package:paudpedia_kemendikbud/models/community/detail/paud_detail_response.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class CommunityArticleWidget extends StatelessWidget {
  final PaudDetailResponse? article;
  final String headerLabel;

  const CommunityArticleWidget({Key? key, this.article, this.headerLabel = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: LayoutBuilder(builder: (context, constraint) {
      return Column(
        children: [
          ToolBarWithoutProfile(
            imageBackground: "assets/images/banner_creative_teacher.png",
            textLeftLabel: headerLabel,
            onBackTap: () {
              Get.back();
            },
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
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
                              Text(article?.nPostTitle ?? "",
                                  style: GoogleFonts.fredokaOne(
                                      color: textDarkBlue, fontSize: 18)),
                              SizedBox(
                                height: 10,
                              ),
                              CachedNetworkImage(
                                imageUrl: article?.nPostImage ?? "",
                                height: 182,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Html(data: article?.ePostContent ?? "")
                            ],
                          ),
                        )))),
          ))
        ],
      );
    })));
  }
}
