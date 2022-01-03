import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/video_attachment_widget.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/paud_date_formarter.dart';
import 'package:video_player/video_player.dart';

class ForumCardHeader extends StatelessWidget {
  final String name;
  final String title;
  final String date;
  final String content;
  final String buttonTitle;
  final String imageUrl;
  final String imagePost;
  final String videoPost;
  final bool isShowButtonAction;
  final Function() onButtonTap;
  final Function(VideoPlayerController?)? onInitVideo;

  ForumCardHeader(
      {Key? key,
      this.isShowButtonAction = true,
      required this.name,
      required this.buttonTitle,
      required this.onButtonTap,
      required this.title,
      required this.date,
      required this.content,
      required this.imageUrl,
      required this.imagePost,
      required this.videoPost,
      this.onInitVideo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: imageUrl.isEmpty
                ? Image.asset(
                    "assets/images/placeholder_profile.png",
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  )
                : CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                    placeholder: (context, _) =>
                        Image.asset("assets/images/placeholder_profile.png"),
                    errorWidget: (context, _, __) =>
                        Image.asset("assets/images/placeholder_profile.png"),
                  ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.black,
            ))),
            child: Wrap(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  Text(title),
                  SizedBox(
                    height: 10,
                  ),
                  Text(PaudDateFormater.formatDateFor(
                      PaudDateFormater.FORMAT_V1, date)),
                  SizedBox(
                    height: 25,
                  ),
                  Html(
                      data: content,
                      shrinkWrap: true,
                      style: {"p": Style(maxLines: 2)}),
                  SizedBox(
                    height: 5,
                  ),
                  if (imagePost.isNotEmpty) ...getImageContent(),
                  if (imagePost.isNotEmpty && videoPost.isNotEmpty)
                    SizedBox(height: 20),
                  if (videoPost.isNotEmpty) ...getVideoContent()
                ],
              ),
              SizedBox(
                width: 15,
              ),
              if (isShowButtonAction)
                TextButton(
                  onPressed: onButtonTap,
                  child: Text(
                    buttonTitle,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    minimumSize: Size(50, 5),
                    padding: EdgeInsets.zero,
                    fixedSize: Size(80, 25),
                    backgroundColor: bgOrange,
                  ),
                )
            ]),
          )),
        ],
      ),
    );
  }

  List<Widget> getImageContent() {
    return [
      Text("Image", style: GoogleFonts.fredokaOne()),
      SizedBox(
        height: 5,
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: CachedNetworkImage(
          width: 250,
          height: 200,
          fit: BoxFit.cover,
          imageUrl: imagePost,
          placeholder: (_, __) =>
              Image.asset("assets/images/placeholder_profile.png"),
          errorWidget: (_, __, ___) =>
              Image.asset("assets/images/placeholder_profile.png"),
        ),
      ),
    ];
  }

  List<Widget> getVideoContent() {
    return [
      Text("Video", style: GoogleFonts.fredokaOne()),
      SizedBox(
        height: 5,
      ),
      VideoAttachment(
        videoUrl: videoPost,
        onVideoInit: (videoControl) {
          onInitVideo?.call(videoControl);
        },
      ),
    ];
  }
}
