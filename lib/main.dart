import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:paudpedia_kemendikbud/screen/home/home_page.dart';
import 'package:paudpedia_kemendikbud/service/local/paud_local_datasource.dart';
import 'package:paudpedia_kemendikbud/service/paud_repository.dart';
import 'package:paudpedia_kemendikbud/service/remote/network_intercepter.dart';
import 'package:paudpedia_kemendikbud/service/remote/paud_remote_datasource.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:sizer/sizer.dart';

Alice alice = Alice(showNotification: true);

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack,
  //     overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: bgLightBlue));

  initDependencyInjection();

  await initializeDateFormatting('id_ID', null);
  runApp(MyApp());
}

void initDependencyInjection() {
  PaudLocalDatasource local = Get.put(PaudLocalDatasource());
  Get.put<InterceptorsWrapper>(NetworkIntercepter(localData: local));
  Get.putAsync<PaudRepository>(
      () async => PaudRepository(
          local: local, remote: PaudRemoteDatasource(Get.find())),
      permanent: true);
}

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey =
      alice.getNavigatorKey() ?? GlobalKey<NavigatorState>();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PaudPedia',
        navigatorKey: NavigationService.navigatorKey,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}
