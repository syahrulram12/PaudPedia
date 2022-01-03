import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as DIO;
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/creativeteacher/creative_teacher_data.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class CreativeTeacherListController extends GetxController {
  String errorMessage = "";
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<ApiResponse<List<CreativeTeacherDataResponse>>> creativeList =
      Rx<ApiResponse<List<CreativeTeacherDataResponse>>>(ApiResponse(data: []));

  CreativeTeacherListController({required this.paudRepository});

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
        showDialogError(message: "There is something wrong in the server");
      } else if (state is LoadedScreenState) {
        Get.back();
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
    getTeacherCreativeList();
  }

  void getTeacherCreativeList() async {
    viewState.value = LoadingScreenState();

    creativeList.value = await paudRepository.getListCreativeTeacher();
    try {
      viewState.value = LoadedScreenState();
    } on DIO.DioError catch (e) {
      viewState.value = ErrorScreenState();
    } catch (e) {
      viewState.value = ErrorScreenState();
    } finally {
      update();
    }
  }
}
