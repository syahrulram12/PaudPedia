import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/forumlist/forum_detail_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/login/forum_login_user_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class ForumListDetailController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<ApiResponse<ForumDetailResponse>> forumDetail =
      Rx(ApiResponse(data: ForumDetailResponse()));

  ForumLoginUserResponse? userInfo;
  String forumId = "";
  String errorMessage = "";

  ForumListDetailController({required this.paudRepository});

  void setForumId(String id) {
    forumId = id;
  }

  @override
  void onInit() {
    super.onInit();
    getProfile();
  }

  @override
  void onReady() {
    super.onReady();

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

    getForumDetail(forumId);
  }

  void getProfile() async {
    try {
      userInfo = await paudRepository.getUserInfo();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void getForumDetail(String id) async {
    viewState.value = LoadingScreenState();

    try {
      forumDetail.value = await paudRepository.getForumDetail(id);
      viewState.value = LoadedScreenState();
    } on DioError catch (e) {
      errorMessage = errorMessage =
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
