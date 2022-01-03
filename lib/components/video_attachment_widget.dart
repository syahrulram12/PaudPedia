import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoAttachment extends StatefulWidget {
  final String videoUrl;
  final Function(VideoPlayerController?)? onVideoInit;

  VideoAttachment({Key? key, required this.videoUrl, this.onVideoInit})
      : super(key: key);

  @override
  State<VideoAttachment> createState() => _VideoAttachmentState();
}

class _VideoAttachmentState extends State<VideoAttachment> {
  VideoPlayerController? videoPlayerController;

  ChewieController? fullScreenController;

  Future<bool> initVideoPlayer(String videoUrl) async {
    try {
      videoPlayerController = VideoPlayerController.network(videoUrl);
      await videoPlayerController?.initialize();

      fullScreenController = ChewieController(
          videoPlayerController: videoPlayerController!,
          placeholder: Center(
              child: Icon(
            Icons.movie,
            size: 150,
          )));

      widget.onVideoInit?.call(videoPlayerController);

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: initVideoPlayer(widget.videoUrl),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data == true) {
            return SizedBox(
                height: 180,
                width: videoPlayerController?.value.size.width,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Chewie(
                      controller: fullScreenController!,
                    )));
          } else {
            return SizedBox();
          }
        });
  }

  @override
  void dispose() {
    fullScreenController?.dispose();
    videoPlayerController?.dispose();
    super.dispose();
  }
}
