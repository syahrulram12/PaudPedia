import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as DIO;
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/gallery/telling/telling_list_response.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/dialog_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TellingListController extends GetxController {
  PaudRepository paudRepository;
  Rx<ScreenState> viewState = Rx<ScreenState>(InitialScreenState());
  Rx<ScreenState> downloadState = Rx<ScreenState>(InitialScreenState());
  Rx<ApiResponse<List<TellingListResponse>>> tells =
      Rx<ApiResponse<List<TellingListResponse>>>(ApiResponse());
  String errorMessage = "";
  int screenwidth = 0;
  Rx<double> progressDownload = 0.0.obs;

  TellingListController({required this.paudRepository});

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

    ever(downloadState, (state) {
      if (state is LoadingScreenState) {
        Get.dialog(
            Center(
                child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Downloading file ..",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  Obx(() => LinearPercentIndicator(
                        alignment: MainAxisAlignment.center,
                        lineHeight: 14.0,
                        width: screenwidth - 100,
                        percent: progressDownload.value > 1
                            ? 1
                            : progressDownload.value,
                        backgroundColor: textLightGrey2,
                        progressColor: successGreen,
                        center:
                            Text("${(progressDownload.value * 100).round()} %"),
                      )),
                ],
              ),
            )),
            barrierDismissible: false);
      } else if (state is ErrorScreenState) {
        Get.back();
        showDialogError(message: "File gagal didownload");
      } else if (state is LoadedScreenState) {
        Get.back();
        showDialogSuccess(message: "File berhasil didownload");
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
    getTellingList();
  }

  void setScreenWidth(int width) {
    screenwidth = width;
  }

  void getTellingList() async {
    viewState.value = LoadingScreenState();

    try {
      tells.value = await paudRepository.getTellingList();

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

  void downloadFile(String url, String path) {
    try {
      downloadState.value = LoadingScreenState();
      paudRepository.downloadFile(url, path, (progress, total) {
        if (progress >= total) {
          downloadState.value = LoadedScreenState();
        } else {
          progressDownload.value = progress / total;
        }
      });
    } catch (e) {
      downloadState.value = ErrorScreenState();
    }
  }
}
