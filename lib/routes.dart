import 'package:get/get.dart';
import 'package:jezioto/ui/mainMenu/detailTour/detail_tour_page.dart';
import 'package:jezioto/ui/mainMenu/search/search_page.dart';
import 'package:jezioto/ui/navigator_page.dart';
import 'package:jezioto/ui/web_view.dart';

import 'ui/mainMenu/main_menu_page.dart';


class Routes {
  Routes._();

  static const String navigator = "/navigator";
  static const String mainMenu = "/mainMenu";
  static const String search = "/search";
  static const String detailTour = "/detailTour";
  static const String webView = "/webView";

  static final newRoutes = <GetPage>[
    GetPage(name: navigator, page:()=>NavigatorPage()),
    GetPage(name: mainMenu, page:()=>MainMenuPage()),
    GetPage(name: search, page:()=>SearchPage()),
    GetPage(name: detailTour, page:()=>DetailTourPage()),
    GetPage(name: webView, page:()=>WebViewPage()),
  ];
}