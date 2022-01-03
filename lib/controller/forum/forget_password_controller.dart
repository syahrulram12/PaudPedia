import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class ForgetPasswordController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  String errorMessage = "";

  ForgetPasswordController({required this.paudRepository});

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
        showDialogSuccess(message: "Email berhasil dikirim");
      }
    });
  }

  void forgetPassword(DIO.FormData request) async {
    viewState.value = LoadingScreenState();

    try {
      ApiResponse response = await paudRepository.forgetPassword(request);

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
      errorMessage =
          "There is something wrong on the server. Please try again.";
      viewState.value = ErrorScreenState();
    }
  }
}
