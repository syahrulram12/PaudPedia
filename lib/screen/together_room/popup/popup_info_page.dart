import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';

class PopupInfoPage extends StatelessWidget {
  final String message;
  final String? buttonText;
  final Function? onButtonTap;
  final bool isNeedBack;

  PopupInfoPage(
      {Key? key,
      this.message = "No Message",
      this.isNeedBack = false,
      this.onButtonTap,
      this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isNeedBack) Timer(Duration(seconds: 2), () => Navigator.pop(context));

    return Scaffold(
      backgroundColor: bgLightBlue,
      body: SafeArea(
          child: Container(
        width: getWidth(context),
        height: getHeight(context),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background_room_home.png"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 190,
              ),
              Text(message,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredokaOne(
                      fontSize: 24, color: textDarkBlue)),
              SizedBox(
                height: 150,
              ),
              if (buttonText != null)
                TextButton(
                  onPressed: () {
                    onButtonTap?.call();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: mainBlue,
                  ),
                  child: Text(buttonText.orEmpty().toUpperCase(),
                      style: GoogleFonts.fredokaOne(color: Colors.white)),
                )
            ],
          ),
        ),
      )),
    );
  }
}
