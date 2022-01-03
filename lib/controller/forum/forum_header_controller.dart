import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:paudpedia_kemendikbud/models/together_room/login/forum_login_user_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';

class ForumHeaderController extends GetxController {
  PaudRepository paudRepository;
  Rx<String> profilePicture = "".obs;

  ForumHeaderController({required this.paudRepository});

  @override
  void onReady() {
    super.onReady();
    getProfile();
  }

  void getProfile() async {
    try {
      ForumLoginUserResponse? user = await paudRepository.getUserInfo();
      profilePicture.value =
          user?.nUserPict ?? "assets/images/placeholder_profile.png";
    } catch (e) {
      profilePicture.value = "assets/images/placeholder_profile.png";
    }
  }

  void logOut() {
    paudRepository.saveIsUserLogin(false);
  }
}
