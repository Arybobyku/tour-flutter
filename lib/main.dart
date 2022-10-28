import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/injection.dart';
import 'package:jezioto/model/tourist_attraction.dart';
import 'package:jezioto/provider/database_provider.dart';
import 'package:jezioto/provider/pdf_reader_provider.dart';
import 'package:jezioto/routes.dart';
import 'package:jezioto/setup_locator.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  initHive();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  setupLocator().then((value) {
    runApp(MyApp());
  });
}

void initHive()async{
  await Hive.initFlutter();
  Hive.registerAdapter(TouristAttractionAdapter());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This menu is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> PDFReaderProvider()),
        ChangeNotifierProvider(create: (context)=> DatabaseProvider()),
      ],
      child: GetMaterialApp(
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
      ),
    );
  }
}

