import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';

class ToolBarWithoutProfile extends StatelessWidget {
  final String imageBackground;
  final String? textLeftLabel;
  final Function? onBackTap;

  ToolBarWithoutProfile(
      {Key? key,
      required this.imageBackground,
      this.onBackTap,
      this.textLeftLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      height: 130,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imageBackground), fit: BoxFit.cover)),
      child: Stack(
        children: [
          if (onBackTap != null)
            Positioned(
                top: 5,
                left: 5,
                child: GestureDetector(
                    onTap: () {
                      onBackTap?.call();
                    },
                    child: Image.asset("assets/images/back.png"))),
          if (textLeftLabel != null)
            Positioned(
              left: 0,
              bottom: 0,
              child: Text(
                textLeftLabel.orEmpty(),
                style:
                    GoogleFonts.fredokaOne(color: textDarkBlue, fontSize: 20),
              ),
            ),
        ],
      ),
    );
  }
}
