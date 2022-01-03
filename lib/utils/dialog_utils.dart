import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

void showDialogError({String title = "Failed", String message = ""}) {
  Get.snackbar('', '',
      backgroundColor: errorRed,
      icon: Icon(
        Icons.error,
        color: Colors.white,
      ),
      titleText: Text(
        title,
        style: GoogleFonts.poppins(
            color: Colors.white, fontWeight: FontWeight.w600),
      ),
      messageText: Text(
        message,
        style: GoogleFonts.poppins(color: Colors.white),
      ));
}

void showDialogSuccess(
    {String title = "Success", String message = "", Function()? onClosed}) {
  Get.snackbar('', '',
      backgroundColor: successGreen,
      duration: Duration(seconds: 1),
      icon: Icon(Icons.check, color: Colors.white),
      titleText: Text(
        title,
        style: GoogleFonts.poppins(
            color: Colors.white, fontWeight: FontWeight.w600),
      ),
      messageText: Text(
        message,
        style: GoogleFonts.poppins(color: Colors.white),
      ), snackbarStatus: (status) {
    if (status == SnackbarStatus.CLOSED) {
      onClosed?.call();
    }
  });
}
