import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/dropdown_white_corner.dart';
import 'package:paudpedia_kemendikbud/components/input_text_white_corner.dart';
import 'package:paudpedia_kemendikbud/controller/forum/register_controller.dart';
import 'package:paudpedia_kemendikbud/models/together_room/register_device_type.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/data_utils.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';

class RoomRegistrationPage extends StatefulWidget {
  RoomRegistrationPage({Key? key}) : super(key: key);

  @override
  _RoomRegistrationPageState createState() => _RoomRegistrationPageState();
}

class _RoomRegistrationPageState extends State<RoomRegistrationPage> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController rePasswordController = new TextEditingController();
  TextEditingController noHpController = new TextEditingController();
  TextEditingController gendersController = new TextEditingController();
  TextEditingController rolesController = new TextEditingController();

  RegisterController pageController =
      Get.put(RegisterController(repository: Get.find()));

  String? genderCode = "1";
  String? roleCode = "1";

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
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background_room_home.png"))),
          child: Stack(
            children: [
              Positioned(
                  top: 5,
                  left: 10,
                  child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset("assets/images/back.png"))),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("REGISTRASI",
                          style: GoogleFonts.fredokaOne(
                              color: textDarkBlue, fontSize: 30)),
                      Container(
                        decoration: BoxDecoration(
                            color: cardLightBlue,
                            borderRadius: BorderRadius.circular(9)),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 48, vertical: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 11),
                        child: Column(
                          children: [
                            InputTextWhiteCorner(
                                eventController: nameController,
                                hintText: "Nama Lengkap",
                                hintStyle: GoogleFonts.robotoCondensed(
                                    color: textLightGrey,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            InputTextWhiteCorner(
                                eventController: addressController,
                                hintText: "Alamat Surel",
                                hintStyle: GoogleFonts.robotoCondensed(
                                    color: textLightGrey,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            InputTextWhiteCorner(
                                eventController: passwordController,
                                hintText: "Kata Sandi",
                                isSecureInput: true,
                                hintStyle: GoogleFonts.robotoCondensed(
                                    color: textLightGrey,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            InputTextWhiteCorner(
                                eventController: rePasswordController,
                                hintText: "Ketik Ulang Kata Sandi",
                                isSecureInput: true,
                                hintStyle: GoogleFonts.robotoCondensed(
                                    color: textLightGrey,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            InputTextWhiteCorner(
                                eventController: noHpController,
                                hintText: "No. Hp",
                                hintStyle: GoogleFonts.robotoCondensed(
                                    color: textLightGrey,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            DropDownWhiteCorner(
                              items: getGender().keys.toList(),
                              defaultSelected: getGender().keys.first,
                              onMenuClicked: (gender) {
                                genderCode = getGender()[gender];
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DropDownWhiteCorner(
                              items: getRole().keys.toList(),
                              defaultSelected: getRole().keys.first,
                              onMenuClicked: (role) {
                                roleCode = getRole()[role];
                              },
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          registForum();
                        },
                        child: Text("Simpan",
                            style: TextStyle(color: Colors.white)),
                        style: TextButton.styleFrom(
                            backgroundColor: mainBlue,
                            minimumSize: Size(103, 23)),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void registForum() {
    if (passwordController.text != rePasswordController.text) {
      showDialogError(
          message:
              "Password yang ada masukan di cocok, silahkan periksa kembali");
    }
    if (nameController.text.isEmpty ||
        addressController.text.isEmpty ||
        passwordController.text.isEmpty ||
        nameController.text.isEmpty ||
        noHpController.text.isEmpty) {
      showDialogError(message: "Seluruh kolom wajib diisi");
    } else {
      pageController.registerForum(DIO.FormData.fromMap({
        "name": nameController.text,
        "email": addressController.text,
        "password": passwordController.text,
        "phoneNumber": noHpController.text,
        "sex": genderCode,
        "role": roleCode,
        "source": GetPlatform.isAndroid
            ? RegisterDeviceType.ANDROID.type
            : RegisterDeviceType.IOS.type
      }));
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    noHpController.dispose();
    gendersController.dispose();

    super.dispose();
  }
}
