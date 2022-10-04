import 'package:get/get.dart';
import 'package:tour/ui/navigator_page.dart';
import 'package:tour/ui/web_view.dart';

import 'ui/mainMenu/main_menu_page.dart';


class Routes {
  Routes._();

  static const String navigator = "/navigator";
  static const String mainMenu = "/mainMenu";
  static const String webView = "/webView";

  static final newRoutes = <GetPage>[
    GetPage(name: navigator, page:()=>NavigatorPage()),
    GetPage(name: mainMenu, page:()=>MainMenuPage()),
    GetPage(name: webView, page:()=>WebViewPage()),
  ];
}