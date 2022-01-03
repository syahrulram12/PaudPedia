import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:paudpedia_kemendikbud/main.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/login/together_room_login_page.dart';
import 'package:paudpedia_kemendikbud/service/local/paud_local_datasource.dart';

class NetworkIntercepter extends InterceptorsWrapper {
  final PaudLocalDatasource localData;

  NetworkIntercepter({required this.localData});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);

    if (err.response?.statusCode == 401 &&
        NavigationService.navigatorKey.currentContext != null) {
      localData.saveIsUserLogin(false);
      Navigator.popUntil(
          NavigationService.navigatorKey.currentContext!,
          (route) =>
              route.settings.name == TogetherRoomLoginPage().toStringShort());
    }
  }
}
