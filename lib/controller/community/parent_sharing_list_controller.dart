import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as DIO;
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/community/parent_sharing/parent_sharing_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class ParentSharingListController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<ApiResponse<List<ParentSharingResponse>>> sharingList =
      Rx<ApiResponse<List<ParentSharingResponse>>>(ApiResponse());
  String errorMessage = "";

  ParentSharingListController({required this.paudRepository});

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
    getParentSharingList();
  }

  void getParentSharingList() async {
    viewState.value = LoadingScreenState();

    sharingList.value = await paudRepository.getListParentSharing();
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
