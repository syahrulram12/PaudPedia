import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as DIO;
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/community/detail/paud_detail_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class CommunityDetailController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<ApiResponse<PaudDetailResponse>> community =
      Rx<ApiResponse<PaudDetailResponse>>(ApiResponse());
  String errorMessage = "";
  String infoId = "";

  CommunityDetailController({required this.paudRepository});

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

    getCommunityDetail(infoId);
  }

  void setInfoId(String id) {
    infoId = id;
  }

  void getCommunityDetail(String id) async {
    viewState.value = LoadingScreenState();

    community.value = await paudRepository.getCommunityDetail(id);
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
