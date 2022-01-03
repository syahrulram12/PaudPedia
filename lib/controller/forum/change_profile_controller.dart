import 'dart:io';

import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class ChangeProfileController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<File> profilePicture = Rx<File>(File(""));
  String errorMessage = "";

  ChangeProfileController({required this.paudRepository});

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
        showDialogError(message: errorMessage);
      } else if (state is LoadedScreenState) {
        Get.back();
        showDialogSuccess(
            message: "Profile berhasil diupdate",
            onClosed: () {
              Get.back();
            });
      }
    });
  }

  void setProfilePicture(File? profile) {
    if (profile != null) {
      profilePicture.value = profile;
    }
  }

  void changeProfile(DIO.FormData formData) async {
    viewState.value = LoadingScreenState();

    try {
      ApiResponse response = await paudRepository.updateProfile(formData);

      if (response.code == 200) {
        viewState.value = LoadedScreenState();
      } else {
        errorMessage = response.message;
        viewState.value = ErrorScreenState();
      }
    } on DIO.DioError catch (e) {
      errorMessage = e.response?.data['message'] ?? e.message;
      viewState.value = ErrorScreenState();
    } catch (e) {
      errorMessage = e.toString();
      viewState.value = ErrorScreenState();
    }
  }
}
