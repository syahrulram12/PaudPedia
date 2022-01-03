import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/Event/event_detail_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class EventDetailController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<ApiResponse<EventDetailResponse>> eventDetail =
      Rx<ApiResponse<EventDetailResponse>>(ApiResponse());
  String eventId = "";
  String errorMessage = "";

  EventDetailController({required this.paudRepository});

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
    getEventDetail(eventId);
  }

  void setEventId(String id) {
    eventId = id;
  }

  void getEventDetail(String id) async {
    viewState.value = LoadingScreenState();

    try {
      eventDetail.value = await paudRepository.getEventDetail(id);
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
