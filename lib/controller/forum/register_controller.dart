import 'dart:math';

import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/home/together_room_home_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/popup/popup_info_page.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/popup/popup_privacy_page.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';

class RegisterController extends GetxController {
  PaudRepository repository;
  Rx<ScreenState> viewState = new Rx<ScreenState>(InitialScreenState());
  String errorMessage = "";

  RegisterController({required this.repository});

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
        Get.to(() => PopupInfoPage(
              message: errorMessage,
              isNeedBack: true,
            ));
      } else if (state is LoadedScreenState) {
        Get.back();
        Get.to(() => PopupPrivacyPage());
      }
    });
  }

  void registerForum(DIO.FormData request) async {
    viewState.value = LoadingScreenState();

    try {
      ApiResponse response = await repository.registerForum(request);

      if (response.code == 200 || response.code == 201) {
        viewState.value = LoadedScreenState();
      } else {
        errorMessage = response.message;
        viewState.value = ErrorScreenState();
      }
    } on DIO.DioError catch (e) {
      errorMessage = e.response?.data['message'] ?? e.message;
      viewState.value = ErrorScreenState();
    } catch (e) {
      errorMessage = "Terjadi sesalahan pada server, silahkan coba lagi";
      viewState.value = ErrorScreenState();
    }
  }
}
