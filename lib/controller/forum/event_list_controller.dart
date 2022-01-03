import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/together_room/Event/event_list_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class EventListController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<List<EventListResponse>> events = Rx<List<EventListResponse>>([]);
  String month = DateTime.now().month.toString();
  DateTime time = DateTime.now();
  String errorMessage = "";

  EventListController({required this.paudRepository});

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
    getEventList(month);
  }

  void setMonth(String monthId) {
    month = monthId;
    getEventList(month);
  }

  void setDateTime(DateTime time) {
    this.time = time;
  }

  void getEventList(String month) async {
    viewState.value = LoadingScreenState();

    try {
      events.value = (await paudRepository.getEventList(month)).data ?? [];
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
