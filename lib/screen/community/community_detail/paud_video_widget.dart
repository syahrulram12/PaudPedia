import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/components/item_common_card.dart';
import 'package:paudpedia_kemendikbud/models/community/detail/paud_detail_response.dart';
import 'package:paudpedia_kemendikbud/models/community/detail/paud_recommendation_response.dart';
import 'package:paudpedia_kemendikbud/models/community/detail_type.dart';
import 'package:video_player/video_player.dart';

class PaudVideoWidget extends StatefulWidget {
  PaudDetailResponse? video;
  final String imageHeader;
  final String tagLabel;
  final String headerLabel;
  final Function(String) onRecommendationTap;

  PaudVideoWidget({
    Key? key,
    this.headerLabel = "",
    required this.video,
    required this.tagLabel,
    required this.onRecommendationTap,
    this.imageHeader = "assets/images/banner_creative_teacher.png",
  }) : super(key: key);

  @override
  State<PaudVideoWidget> createState() => _PaudVideoWidgetState();
}

class _PaudVideoWidgetState extends State<PaudVideoWidget> {
  VideoPlayerController? videoPlayerController;
  ChewieController? fullScreenController;
  List<PaudRecommendationResponse>? rekomendasi;

  @override
  void initState() {
    super.initState();

    rekomendasi = widget.video?.rekomendasi;
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      initVideoPlayer();
    });
  }

  Future<void> initVideoPlayer() async {
    videoPlayerController =
        VideoPlayerController.network(widget.video?.nPostVideo ?? "");
    await videoPlayerController?.initialize();

    fullScreenController = ChewieController(
        videoPlayerController: videoPlayerController!,
        placeholder: Center(
            child: Icon(
          Icons.movie,
          size: 150,
        )),
        deviceOrientationsAfterFullScreen: [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
        allowedScreenSleep: false,
        showControlsOnInitialize: true);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ToolBarWithProfile(
              imageBackground: widget.imageHeader,
              textLeftLabel: widget.headerLabel,
              onBackTap: () {
                videoPlayerController?.pause();
                fullScreenController?.videoPlayerController.pause();
                Get.back();
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
              child: videoPlayerController?.value.isInitialized == true ||
                      videoPlayerController != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: AspectRatio(
                        aspectRatio:
                            videoPlayerController?.value.aspectRatio ?? 1,
                        child: Chewie(controller: fullScreenController!),
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: rekomendasi?.length ?? 0,
                  itemBuilder: (context, pos) {
                    PaudRecommendationResponse? item = rekomendasi?[pos];

                    return ItemCommonCard(
                      imageUrl: item?.thumbnail ?? "",
                      isVideo: item?.type == DetailType.VIDEO,
                      titleArticle: item?.nPostTitle ?? "",
                      dateArticle: item?.dPost ?? "",
                      buttonTitle: "Sumber: \nwww.paudpedia.kemdikbud.go.id",
                      onItemClick: () {
                        videoPlayerController?.pause();
                        fullScreenController?.videoPlayerController.pause();
                        widget.onRecommendationTap(item?.iPost ?? "0");
                      },
                    );
                  }),
            ),
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    fullScreenController?.dispose();
    videoPlayerController?.dispose();
    super.dispose();
  }
}
