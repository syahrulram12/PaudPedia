import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/models/together_room/login/forum_login_user_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';

class RoomHomeController extends GetxController {
  final PaudRepository paudRepository;
  Rx<ForumLoginUserResponse?> userInfo = Rx(null);
  Rx<bool> isShow = false.obs;

  RoomHomeController({required this.paudRepository});

  @override
  void onReady() {
    super.onReady();
    getuserInfo();
  }

  void toogleTooltopShow() {
    isShow.value = !isShow.value;
  }

  void logout() {
    paudRepository.saveIsUserLogin(false);
  }

  void getuserInfo() async {
    try {
      userInfo.value = await paudRepository.getUserInfo();
    } catch (e) {
      userInfo.value = null;
    }
  }
}
