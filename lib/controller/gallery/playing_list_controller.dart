import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as DIO;
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/gallery/playing/playing_list_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class PlayingListController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<ApiResponse<List<PlayingListResponse>>> plays =
      Rx<ApiResponse<List<PlayingListResponse>>>(ApiResponse());
  String errorMessage = "";

  PlayingListController({required this.paudRepository});

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
    getPlayingList();
  }

  void getPlayingList() async {
    viewState.value = LoadingScreenState();

    try {
      plays.value = await paudRepository.getPlayingList();

      viewState.value = LoadedScreenState();
    } on DIO.DioError catch (e) {
      errorMessage = e.message;
      viewState.value = ErrorScreenState();
    } catch (e) {
      viewState.value = ErrorScreenState();
    } finally {
      update();
    }
  }
}
