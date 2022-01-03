import 'package:dio/dio.dart' as DioForm;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/home/together_room_home_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/popup/popup_info_page.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';

class LoginController extends GetxController {
  PaudRepository repository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  RxBool isUserLogin = false.obs;
  String errorMessage = "";

  LoginController({required this.repository});

  @override
  void onInit() {
    super.onInit();

    ever(viewState, (state) {
      if (state is LoadingScreenState) {
        Get.dialog(Center(
          child: CircularProgressIndicator(),
        ));
      } else if (state is ErrorScreenState) {
        Get.back();
        Get.to(PopupInfoPage(
          message: errorMessage,
          isNeedBack: true,
        ));
      } else if (state is LoadedScreenState) {
        Get.back();
        Get.to(TogetherRoomHomePage());
      }
    });

    ever(isUserLogin, (bool state) {
      if (state) {
        Get.to(() => TogetherRoomHomePage());
      }
    });

    getStateUserLogin();
  }

  void getStateUserLogin() async {
    isUserLogin.value = await repository.getIsUserLogin();
  }

  void loginForum(DioForm.FormData request) async {
    viewState.value = LoadingScreenState();

    try {
      await repository.loginForum(request);
      viewState.value = LoadedScreenState();
    } on DioForm.DioError catch (e) {
      errorMessage = e.response?.data['message'] ?? e.message;
      viewState.value = ErrorScreenState();
    } catch (e) {
      errorMessage =
          "There is something wrong on the server. Please try again.";
      viewState.value = ErrorScreenState();
    }
  }
}
