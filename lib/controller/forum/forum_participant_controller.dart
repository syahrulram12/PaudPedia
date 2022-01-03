import 'dart:io';

import 'package:dio/dio.dart' as DIO;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/subjectlist/forum_subject_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';

class ForumParticipantController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> dataState = Rx<ScreenState>(InitialScreenState());
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<ApiResponse<List<ForumSubjectResponse>>> listSubject =
      Rx<ApiResponse<List<ForumSubjectResponse>>>(ApiResponse(data: []));
  Rx<File> fileImageSelected = Rx<File>(File(""));
  Rx<File> fileVideoSelected = Rx<File>(File(""));
  File? fileImageAttachment;
  File? fileVideoAttachment;

  String errorMessage = "";

  ForumParticipantController({
    required this.paudRepository,
  });

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
        showDialogSuccess(
            message: "Partisipasi berhasil dikirim",
            onClosed: () => Get.back());
      }
    });

    ever(dataState, (state) {
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

  void clearData() {
    fileImageSelected = Rx<File>(File(""));
    fileVideoSelected = Rx<File>(File(""));
    fileImageAttachment = null;
    fileVideoAttachment = null;
  }

  @override
  void onReady() {
    super.onReady();
    getSubjectList();
  }

  void setFileImageSelected(File? newFile) {
    if (newFile != null) {
      fileImageSelected.value = newFile;
    }
  }

  void setFileVideoSelected(File? newFile) {
    if (newFile != null) {
      fileVideoSelected.value = newFile;
    }
  }

  void setFileImageAttachment(File? newFile) {
    fileImageAttachment = newFile;
  }

  void setFileVideoAttachment(File? newFile) {
    fileVideoAttachment = newFile;
  }

  void getSubjectList() async {
    dataState.value = LoadingScreenState();

    try {
      listSubject.value = await paudRepository.getListSubject();
      dataState.value = LoadedScreenState();
    } on DIO.DioError catch (e) {
      errorMessage = e.response?.data['message'] ?? e.message;
      dataState.value = ErrorScreenState();
    } catch (e) {
      errorMessage = "There is something wrong on the server. Please try again.";
      dataState.value = ErrorScreenState();
    }
  }

  void submitParticipant(DIO.FormData request) async {
    viewState.value = LoadingScreenState();

    try {
      ApiResponse response = await paudRepository.postFormParticipant(request);

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
      errorMessage = "There is something wrong on the server. Please try again.";
      viewState.value = ErrorScreenState();
    }
  }
}
