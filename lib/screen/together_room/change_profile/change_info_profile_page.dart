import 'dart:io';

import 'package:dio/dio.dart' as DIO;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/dropdown_white_corner.dart';
import 'package:paudpedia_kemendikbud/components/input_text_white_corner.dart';
import 'package:paudpedia_kemendikbud/components/toolbar.dart';
import 'package:paudpedia_kemendikbud/controller/forum/change_profile_controller.dart';
import 'package:paudpedia_kemendikbud/models/user/user_profile_response.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/data_utils.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';
import 'package:path/path.dart';

class ChangeInfoProfilePage extends StatefulWidget {
  final UserProfileResponse? profile;

  const ChangeInfoProfilePage({Key? key, required this.profile})
      : super(key: key);

  @override
  _ChangeInfoProfilePageState createState() => _ChangeInfoProfilePageState();
}

class _ChangeInfoProfilePageState extends State<ChangeInfoProfilePage> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController noHpController = new TextEditingController();
  String? genderCode = "";
  String? roleCode = "";

  ChangeProfileController pageController =
      Get.put(ChangeProfileController(paudRepository: Get.find()));

  @override
  void initState() {
    super.initState();
    nameController.text = widget.profile?.nUser ?? "";
    addressController.text = widget.profile?.nUserEmail ?? "";
    noHpController.text = widget.profile?.nUserHp ?? "";
  }

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
                  image: AssetImage("assets/images/Background.png"),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Toolbar(
                onBackTap: () {
                  Get.back();
                },
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  top: getHeight(context) / 9,
                  child: Center(
                      child: ProfilePictureWidget(
                    profile: widget.profile,
                  ))),
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 61),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Ubah Profil Pengguna",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 36,
                            fontWeight: FontWeight.w400,
                            color: textDarkBlue),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 15),
                        decoration: BoxDecoration(
                            color: cardLightBlue,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            InputTextWhiteCorner(
                              eventController: nameController,
                              hintText: widget.profile?.nUser ?? "Nama Lengkap",
                              hintStyle: GoogleFonts.robotoCondensed(
                                  color: textLightGrey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InputTextWhiteCorner(
                                eventController: addressController,
                                hintText: widget.profile?.nUserEmail ??
                                    "Alamat Surel",
                                hintStyle: GoogleFonts.robotoCondensed(
                                    color: textLightGrey,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 15,
                            ),
                            InputTextWhiteCorner(
                                eventController: noHpController,
                                hintText: widget.profile?.nUserHp ?? "No. Hp",
                                hintStyle: GoogleFonts.robotoCondensed(
                                    color: textLightGrey,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 15,
                            ),
                            DropDownWhiteCorner(
                              items: getGender().keys.toList(),
                              defaultSelected: getGenderByCode()[
                                      widget.profile?.cUserSex ?? 0] ??
                                  getGender().keys.first,
                              onMenuClicked: (gender) {
                                genderCode = getGender()[gender];
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            DropDownWhiteCorner(
                              items: getRole().keys.toList(),
                              defaultSelected: getRoleByCode()[
                                      widget.profile?.cUserAs ?? 0] ??
                                  getRole().keys.first,
                              onMenuClicked: (role) {
                                roleCode = getRole()[role];
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          changeInfoProfile();
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void changeInfoProfile() async {
    if (nameController.text.isEmpty ||
        addressController.text.isEmpty ||
        noHpController.text.isEmpty) {
      showDialogError(message: "Seluruh kolom wajib diisi");
      return;
    }

    DIO.FormData request = DIO.FormData.fromMap({
      "userId": widget.profile?.iUser,
      "name": nameController.text,
      "email": addressController.text,
      "phoneNumber": noHpController.text,
      "sex": (genderCode?.isNotEmpty == true)
          ? genderCode.orEmpty()
          : getGenderByCode().keys.first,
      "role": (roleCode?.isNotEmpty == true)
          ? roleCode.orEmpty()
          : getRoleByCode().keys.first,
      if (pageController.profilePicture.value.path.isNotEmpty)
        "image": await DIO.MultipartFile.fromFile(
            pageController.profilePicture.value.path,
            filename: basename(pageController.profilePicture.value.path)),
    });

    pageController.changeProfile(request);
  }

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    noHpController.dispose();
    super.dispose();
  }
}

class ProfilePictureWidget extends StatelessWidget {
  UserProfileResponse? profile;
  ChangeProfileController pageController = Get.find();

  ProfilePictureWidget({Key? key, this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              border: Border.all(
                color: Colors.green,
                width: 5,
              ),
              color: textLightGrey2),
          child: Obx(() => pageController.profilePicture.value.path.isNotEmpty
              ? CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      FileImage(pageController.profilePicture.value))
              : profile != null
                  ? CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        profile?.nUserPict ?? "",
                      ))
                  : Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset(
                          "assets/images/default_profile_picture.png"),
                    )),
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: GestureDetector(
              child: Image.asset("assets/images/button_plus_profile.png"),
              onTap: () {
                getFile().then((value) {
                  pageController.setProfilePicture(value);
                });
              },
            ))
      ],
    );
  }

  Future<File?> getFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      return File(result.files.single.path!);
    }
  }
}
