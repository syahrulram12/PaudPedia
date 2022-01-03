import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/topiclist/forum_topic_detail_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class TopicListDetailController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<ApiResponse<TopicDetailResponse>> topicDetail =
      Rx<ApiResponse<TopicDetailResponse>>(
          ApiResponse(data: TopicDetailResponse()));
  String topicId = "";
  String errorMessage = "";

  TopicListDetailController({required this.paudRepository});

  void setTopicId(String id) {
    topicId = id;
  }

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
    getTopicListDetail(topicId);
  }

  void getTopicListDetail(String id) async {
    viewState.value = LoadingScreenState();

    try {
      topicDetail.value = await paudRepository.getTopicDetail(id);
      viewState.value = LoadedScreenState();
    } on DioError catch (e) {
      errorMessage = e.response?.data['message'] ?? e.message;
      viewState.value = ErrorScreenState();
    } catch (e) {
      errorMessage = "There is something wrong on the server. Please try again.";
      viewState.value = ErrorScreenState();
    } finally {
      update();
    }
  }
}
