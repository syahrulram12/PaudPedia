import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paudpedia_kemendikbud/models/gallery/sing/sing_list_response.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/paud_date_formarter.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class ItemGalleryCard extends StatelessWidget {
  final SingListResponse? item;
  bool isVideo = false;
  String imageUrl = "";
  String title = "";
  String date = "";
  String actionButtonTitle;
  Function()? onItemTap;

  ItemGalleryCard(
      {Key? key,
      this.item,
      this.isVideo = false,
      this.imageUrl = "",
      this.title = "",
      this.date = "",
      this.actionButtonTitle = "",
      this.onItemTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder<String>(
                future: getThumbnailImageFromVideo(this.imageUrl),
                builder: (_, snapshotData) {
                  return snapshotData.data != null
                      ? isVideo
                          ? Image.file(File(snapshotData.data!),
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover)
                          : CachedNetworkImage(
                              imageUrl: snapshotData.data!,
                              height: 95,
                              width: 100,
                              fit: BoxFit.fitHeight,
                            )
                      : SizedBox(width: 100);
                }),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Text(
              PaudDateFormater.formatDateFor(PaudDateFormater.FORMAT_V2, date),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                actionButtonTitle,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  backgroundColor: bgOrange,
                  minimumSize: Size(120, 20)),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black,
            )
          ],
        ),
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
