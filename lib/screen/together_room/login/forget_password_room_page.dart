import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/input_text_white_corner.dart';
import 'package:paudpedia_kemendikbud/controller/forum/forget_password_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';

class ForgetPasswordRoomPage extends StatelessWidget {
  TextEditingController emailController = new TextEditingController();
  ForgetPasswordController pageController =
      Get.put(ForgetPasswordController(paudRepository: Get.find()));

  ForgetPasswordRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: GetBuilder<ForgetPasswordController>(
        initState: (_) {
          ever(pageController.viewState, (state) {
            if (state is LoadedScreenState) {
              emailController.clear();
            }
          });
        },
        dispose: (_) {
          emailController.dispose();
        },
        builder: (controller) {
          return Container(
            width: getWidth(context),
            height: getHeight(context),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage("assets/images/background_room_home.png"))),
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset("assets/images/back.png"),
                  ),
                ),
                Positioned(
                    top: getHeight(context) / 3.2,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lupa Kata\n Sandi",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.fredokaOne(
                                color: textDarkBlue, fontSize: 36),
                          ),
                          SizedBox(
                            height: 39,
                          ),
                          Container(
                            padding: const EdgeInsets.all(22),
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                color: cardLightBlue,
                                borderRadius: BorderRadius.circular(9)),
                            child: InputTextWhiteCorner(
                              hintText: "Alamat Surel",
                              hintStyle: GoogleFonts.robotoCondensed(
                                  color: textLightGrey,
                                  fontWeight: FontWeight.bold),
                              eventController: emailController,
                            ),
                          ),
                          SizedBox(
                            height: 150,
                          ),
                          Center(
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: mainBlue,
                                    padding: EdgeInsets.zero,
                                    fixedSize: Size(103, 20),
                                    minimumSize: Size(103, 30)),
                                onPressed: sendEmail,
                                child: Text(
                                  "Kirim",
                                  style: GoogleFonts.fredokaOne(
                                      fontSize: 18, color: Colors.white),
                                )),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          );
        },
      )),
    );
  }

  void sendEmail() {
    if (emailController.text.isEmpty) {
      showDialogError(message: "Kolom email wajib diisi");
    }

    pageController
        .forgetPassword(DIO.FormData.fromMap({"email": emailController.text}));
  }
}
