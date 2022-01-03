import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/input_text_white_corner.dart';
import 'package:paudpedia_kemendikbud/controller/forum/login_controller.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/login/forget_password_room_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/register/room_registration_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';

class TogetherRoomLoginPage extends StatelessWidget {
  TogetherRoomLoginPage({Key? key}) : super(key: key);

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  final pageController = Get.put(LoginController(repository: Get.find()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: getWidth(context),
        height: getHeight(context),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/background_together_login.png",
                ))),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset("assets/images/back.png")),
                ),
              ),
              Spacer(),
              InputSurelForm(
                  username: usernameController, password: passwordController),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: login,
                child: Text(
                  "MASUK",
                  style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: mainBlue, minimumSize: Size(153, 43)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Get.to(RoomRegistrationPage());
                },
                child: Text(
                  "REGISTRASI",
                  style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: mainBlue, minimumSize: Size(153, 43)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Get.to(ForgetPasswordRoomPage());
                },
                child: Text(
                  "LUPA KATA SANDI",
                  style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: mainBlue, minimumSize: Size(153, 43)),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    String email = "";
    String pass = "";

    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      showDialogError(message: "Username dan Password Wajib diisi");
      // email = "raybeansm@gmail.com";
      // pass = "siti12345";
      // pageController
      //     .loginForum(DIO.FormData.fromMap({"email": email, "password": pass}));
      usernameController.clear();
      passwordController.clear();
    } else {
      email = usernameController.text;
      pass = passwordController.text;
      pageController
          .loginForum(DIO.FormData.fromMap({"email": email, "password": pass}));
      usernameController.clear();
      passwordController.clear();
    }
  }
}

class InputSurelForm extends StatelessWidget {
  const InputSurelForm(
      {Key? key, required this.username, required this.password})
      : super(key: key);

  final TextEditingController username;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: cardLightBlue),
        child: Column(children: [
          InputTextWhiteCorner(
            eventController: username,
            hintText: "Alamat Surel",
            hintStyle: GoogleFonts.robotoCondensed(
                color: textLightGrey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          InputTextWhiteCorner(
            eventController: password,
            hintText: "Kata Sandi",
            isSecureInput: true,
            hintStyle: GoogleFonts.robotoCondensed(
                color: textLightGrey, fontWeight: FontWeight.bold),
          )
        ]));
  }
}
