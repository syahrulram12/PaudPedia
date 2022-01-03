import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class ItemBookCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool hasFlipperBook;
  final Function() onDownloadTap;
  final Function() onPreviewTap;
  final Function() onReadingTap;

  const ItemBookCard(
      {Key? key,
      this.hasFlipperBook = false,
      required this.onDownloadTap,
      required this.onReadingTap,
      required this.onPreviewTap,
      required this.imageUrl,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            GestureDetector(
              onTap: onPreviewTap,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                width: double.infinity,
                height: 150,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: hasFlipperBook
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.end,
              children: [
                if (hasFlipperBook)
                  TextButton(
                      onPressed: onReadingTap,
                      style: TextButton.styleFrom(
                          backgroundColor: bgOrange,
                          padding: EdgeInsets.zero,
                          minimumSize: Size(100, 20)),
                      child: Text(
                        "Baca",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      )),
                TextButton(
                    onPressed: onDownloadTap,
                    style: TextButton.styleFrom(
                        backgroundColor: bgOrange,
                        padding: EdgeInsets.zero,
                        minimumSize: Size(100, 20)),
                    child: Text(
                      "Unduh",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    )),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
