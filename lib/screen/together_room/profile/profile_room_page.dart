import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar.dart';
import 'package:paudpedia_kemendikbud/controller/forum/profile_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/user/user_profile_response.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/change_profile/change_info_profile_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/change_profile/change_password_profile_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/data_utils.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';

class ProfileRoomPage extends StatelessWidget {
  ProfileController pageController =
      Get.put(ProfileController(paudRepository: Get.find()));

  ProfileRoomPage({Key? key}) : super(key: key);

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
                  image: AssetImage("assets/images/Background.png"))),
          child: GetBuilder<ProfileController>(builder: (controller) {
            if (controller.viewState.value is ErrorScreenState) {
              return Center(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: bgOrange,
                    ),
                    onPressed: () {
                      controller.getPorfile();
                    },
                    child: Text("Coba lagi",
                        style: GoogleFonts.fredokaOne(color: Colors.white))),
              );
            }

            return Column(
              children: [
                Toolbar(
                  onBackTap: () {
                    Get.back();
                  },
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
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
                            child: pageController.profile.value.data != null &&
                                    pageController.profile.value.data!.nUserPict
                                        .isNotEmpty
                                ? CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage(pageController
                                        .profile.value.data!.nUserPict),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Image.asset(
                                        "assets/images/default_profile_picture.png"),
                                  )),
                        SizedBox(
                          height: 22,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 173),
                          child: Text(
                            "Profil Pengguna",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.fredokaOne(
                                color: textDarkBlue, fontSize: 33),
                          ),
                        ),
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.fromLTRB(45, 30, 45, 10),
                            padding: const EdgeInsets.symmetric(
                                vertical: 31, horizontal: 22),
                            decoration: BoxDecoration(
                                color: cardLightBlue,
                                borderRadius: BorderRadius.circular(9)),
                            child: getListFormProfile(
                                controller.profile.value.data)),
                        ActionProfileWidget()
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget getListFormProfile(UserProfileResponse? profile) {
    return Column(children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: Colors.white),
        child: Text(
          profile?.nUser ?? "Nama Lengkap",
          textAlign: TextAlign.center,
          style: TextStyle(color: textLightGrey, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 25,
      ),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: Colors.white),
        child: Text(
          profile?.nUserEmail ?? "Alamat Surel",
          textAlign: TextAlign.center,
          style: TextStyle(color: textLightGrey, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 25,
      ),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: Colors.white),
        child: Text(
          profile?.nUserHp ?? "No. Hp",
          textAlign: TextAlign.center,
          style: TextStyle(color: textLightGrey, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 25,
      ),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: Colors.white),
        child: Text(
          getGenderByCode()[profile?.cUserSex ?? 1] ?? "Jenis Kelamin",
          textAlign: TextAlign.center,
          style: TextStyle(color: textLightGrey, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 25,
      ),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: Colors.white),
        child: Text(
          getRoleByCode()[profile?.cUserAs ?? 1] ?? "Peran",
          textAlign: TextAlign.center,
          style: TextStyle(color: textLightGrey, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }
}

class ActionProfileWidget extends StatelessWidget {
  ProfileController pageController = Get.find();

  ActionProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 65),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Get.to(() => ChangeInfoProfilePage(
                        profile: pageController.profile.value.data))
                    ?.then((value) => pageController.getPorfile());
              },
              child: Text(
                "Ubah Profil",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: mainBlue,
                  padding: EdgeInsets.zero,
                  minimumSize: Size(53, 27)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                Get.to(() => ChangePasswordProfilePage(
                    userId: pageController.profile.value.data?.iUser ?? ""));
              },
              child: Text(
                "Ubah Kata Sandi",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: mainBlue,
                  padding: EdgeInsets.zero,
                  minimumSize: Size(53, 27)),
            ),
          ),
        ],
      ),
    );
  }
}
