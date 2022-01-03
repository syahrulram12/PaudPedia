import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/user/user_profile_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class ProfileController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<File> profilePicture = Rx<File>(File(""));
  Rx<ApiResponse<UserProfileResponse>> profile =
      Rx<ApiResponse<UserProfileResponse>>(ApiResponse());
  String errorMessage = "";

  ProfileController({required this.paudRepository});

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
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
    getPorfile();
  }

  void setProfilePicture(File? profile) {
    if (profile != null) {
      profilePicture.value = profile;
    }
  }

  void getPorfile() async {
    viewState.value = LoadingScreenState();

    try {
      profile.value = await paudRepository.getProfile();
      viewState.value = LoadedScreenState();
    } on DioError catch (e) {
      errorMessage = e.response?.data['message'] ?? e.message;
      viewState.value = ErrorScreenState();
    } catch (e) {
      errorMessage = "There is something wrong in the server";
      viewState.value = ErrorScreenState();
    } finally {
      update();
    }
  }
}
