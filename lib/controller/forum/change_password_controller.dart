import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class ChangePasswordController extends GetxController {
  PaudRepository repository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  String errorMessage = "";

  ChangePasswordController({required this.repository});

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
        showDialogSuccess(message: "Password berhasil di update");
      }
    });
  }

  void changePassword(DIO.FormData request) async {
    viewState.value = LoadingScreenState();

    try {
      ApiResponse response = await repository.changePassword(request);

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
      errorMessage = "There is something wrong in the server";
      viewState.value = ErrorScreenState();
    }
  }
}
