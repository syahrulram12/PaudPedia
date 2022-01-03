import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/paud_date_formarter.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class ItemCommonCard extends StatelessWidget {
  final Function()? onItemClick;
  String imageUrl = "";
  bool isVideo = false;
  String titleArticle = "";
  String dateArticle = "";
  String buttonTitle = "";

  ItemCommonCard(
      {Key? key,
      this.onItemClick,
      this.isVideo = false,
      required this.imageUrl,
      required this.titleArticle,
      required this.dateArticle,
      required this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onItemClick?.call();
      },
      child: Row(
        children: [
          FutureBuilder<String>(
              future: getThumbnailImageFromVideo(this.imageUrl),
              builder: (_, snapshotData) {
                print("The image is ${snapshotData.data}");

                if (snapshotData.connectionState == ConnectionState.waiting)
                  return Center(
                      child: Icon(
                    Icons.movie,
                    size: 100,
                  ));

                return snapshotData.data != null
                    ? isVideo
                        ? Image.file(File(snapshotData.data!),
                            width: 100, fit: BoxFit.cover)
                        : CachedNetworkImage(
                            imageUrl: snapshotData.data!,
                            height: 95,
                            width: 100,
                            fit: BoxFit.fitHeight,
                          )
                    : SizedBox(width: 100);
              }),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleArticle,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
                Text(
                    PaudDateFormater.formatDateFor(
                        PaudDateFormater.FORMAT_V2, dateArticle),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    buttonTitle,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(5),
                      backgroundColor: bgOrange,
                      minimumSize: Size(140, 25)),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  Future<String> getThumbnailImageFromVideo(String url) async {
    String? data;

    if (isVideo && url.contains('http')) {
      data = await VideoThumbnail.thumbnailFile(
          video: url,
          thumbnailPath: (await getTemporaryDirectory()).path,
          imageFormat: ImageFormat.JPEG,
          maxWidth: 128,
          quality: 25);
    } else {
      data = url;
    }

    return data ?? "";
  }
}
