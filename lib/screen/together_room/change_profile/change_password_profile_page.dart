import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/input_text_white_corner.dart';
import 'package:paudpedia_kemendikbud/controller/forum/change_password_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';

class ChangePasswordProfilePage extends StatelessWidget {
  final String userId;

  const ChangePasswordProfilePage({Key? key, required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      body: SafeArea(
        child: Container(
          width: getWidth(context),
          height: getHeight(context),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background_room_home.png"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    "assets/images/back.png",
                    fit: BoxFit.cover,
                  ),
                ),
                KeyboardVisibilityBuilder(
                    builder: (context, isKeyboardVisible) {
                  return Positioned(
                    top: isKeyboardVisible ? 100 : 210,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: ChangePassInputForm(
                      userId: userId,
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChangePassInputForm extends StatefulWidget {
  final String userId;

  ChangePassInputForm({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  _ChangePassInputFormState createState() => _ChangePassInputFormState();
}

class _ChangePassInputFormState extends State<ChangePassInputForm> {
  TextEditingController oldPassword = new TextEditingController();
  TextEditingController newPassword = new TextEditingController();
  TextEditingController reNewPassword = new TextEditingController();

  ChangePasswordController pageController =
      Get.put(ChangePasswordController(repository: Get.find()));

  @override
  void initState() {
    super.initState();
    ever(pageController.viewState, (state) {
      if (state is LoadedScreenState) {
        oldPassword.clear();
        newPassword.clear();
        reNewPassword.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(35, 35, 35, 35),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Ubah Kata \nSandi",
            textAlign: TextAlign.center,
            style: GoogleFonts.fredokaOne(
                fontSize: 36, fontWeight: FontWeight.w400, color: textDarkBlue),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
            decoration: BoxDecoration(
                color: cardLightBlue, borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                InputTextWhiteCorner(
                  eventController: oldPassword,
                  hintText: "Kata Sandi Lama",
                  hintStyle: GoogleFonts.robotoCondensed(
                      color: textLightGrey, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15,
                ),
                InputTextWhiteCorner(
                    eventController: newPassword,
                    hintText: "Kata Sandi Baru",
                    hintStyle: GoogleFonts.robotoCondensed(
                        color: textLightGrey, fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 15,
                ),
                InputTextWhiteCorner(
                    eventController: reNewPassword,
                    hintText: "Ketik Ulang Kata Sandi Baru",
                    hintStyle: GoogleFonts.robotoCondensed(
                        color: textLightGrey, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              changePassword();
            },
            child: Text(
              "Simpan",
              style: GoogleFonts.fredokaOne(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              minimumSize: Size(123, 30),
              backgroundColor: mainBlue,
            ),
          )
        ],
      ),
    );
  }

  void changePassword() {
    if (newPassword.text != reNewPassword.text) {
      showDialogError(
          message: "Password yg anda masukan tidak sama, silahkan coba lagi");
    } else if (newPassword.text.isEmpty || oldPassword.text.isEmpty) {
      showDialogError(message: "Semua input wajib diisi");
    } else {
      pageController.changePassword(DIO.FormData.fromMap({
        "userId": widget.userId,
        "old_password": oldPassword.text,
        "new_password": newPassword.text,
      }));
    }
  }

  @override
  void dispose() {
    oldPassword.dispose();
    newPassword.dispose();
    reNewPassword.dispose();
    super.dispose();
  }
}
