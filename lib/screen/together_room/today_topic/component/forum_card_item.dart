import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class ForumCardItem extends StatelessWidget {
  final bool isShownReportButton;
  final String imageUrl;
  final String placeholder;
  final String name;
  final String title;
  final String time;
  final Function()? onItemTap;
  final Function()? onReportTap;

  const ForumCardItem(
      {Key? key,
      this.isShownReportButton = false,
      this.imageUrl = "assets/images/placeholder_profile.png",
      required this.placeholder,
      required this.name,
      required this.title,
      required this.time,
      this.onReportTap,
      this.onItemTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 15),
      child: GestureDetector(
        onTap: () {
          onItemTap?.call();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: imageUrl.startsWith("assets")
                  ? Image.asset(
                      imageUrl,
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                    )
                  : CachedNetworkImage(
                      imageUrl: imageUrl,
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                      errorWidget: (context, _, __) =>
                          Image.network(placeholder),
                      placeholder: (context, _) => Image.network(placeholder),
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
                  child: Wrap(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                          Text(title),
                          SizedBox(
                            height: 10,
                          ),
                          Text(time),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      if (isShownReportButton)
                        TextButton(
                          onPressed: () {
                            onReportTap?.call();
                          },
                          child: Text(
                            "Laporkan",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                            minimumSize: Size(50, 5),
                            padding: EdgeInsets.zero,
                            fixedSize: Size(80, 25),
                            backgroundColor: bgOrange,
                          ),
                        )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
