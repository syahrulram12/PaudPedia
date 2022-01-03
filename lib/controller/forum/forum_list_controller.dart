import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/forumlist/forum_together_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class ForumListController extends GetxController {
  PaudRepository repository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  var listForum =
      Rx<ApiResponse<List<ForumTogetherResponse>>>(ApiResponse(data: []));
  String errorMessage = "";

  ForumListController({required this.repository});

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
    print("On init widget");
    getForumList();
  }

  void getForumList() async {
    viewState.value = LoadingScreenState();

    try {
      var result = await repository.getForumList();

      listForum.update((val) {
        val?.data = result.data;
      });
      viewState.value = LoadedScreenState();
    } on DioError catch (e) {
      errorMessage = e.response?.data['message'] ?? e.message;
      viewState.value = ErrorScreenState();
    } catch (e) {
      errorMessage =
          "There is something wrong on the server. Please try again.";
      viewState.value = ErrorScreenState();
    } finally {
      update();
    }
  }
}
