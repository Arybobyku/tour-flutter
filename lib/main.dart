import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:tour/helper/color_palette.dart';
import 'package:tour/injection.dart';
import 'package:tour/routes.dart';
import 'package:tour/setup_locator.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  setupLocator().then((value) {
    runApp(MyApp());
  });
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This menu is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: EasyLoading.init(),
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      color: ColorPalette.generalBackgroundSoftColor,
      title: 'Tour',
      initialRoute: Routes.navigator,
      getPages: Routes.newRoutes,
      theme: ThemeData(
        primaryColor: ColorPalette.generalPrimaryColor,
        backgroundColor: ColorPalette.generalBackgroundSoftColor,
        appBarTheme: AppBarTheme(
          color: ColorPalette.generalPrimaryColor,
          iconTheme: IconThemeData(
            color: ColorPalette.generalPrimaryColor
          )
        ),

        fontFamily: 'ubuntu',
      ),
    );
  }
}

