import 'package:get/get.dart';
import 'package:jezioto/ui/listKecamatan/list_kecamatan_page.dart';
import 'package:jezioto/ui/listToursitAttraction/list_tourist_attraction_page.dart';
import 'package:jezioto/ui/navigator_page.dart';
import 'package:jezioto/ui/pdfReader/pdf_reader_page.dart';
import 'package:jezioto/ui/web_view.dart';

import 'ui/detailTour/detail_tour_page.dart';
import 'ui/mainMenu/main_menu_page.dart';
import 'ui/search/search_page.dart';


class Routes {
  Routes._();

  static const String navigator = "/navigator";
  static const String mainMenu = "/mainMenu";
  static const String search = "/search";

  static const String detailTour = "/detailTour";

  static const String listKecamatan = "/listKecamatan";
  static const String listTouristAttraction = "/listTouristAttraction";

  static const String pdfReader = "/pdfReader";
  static const String webView = "/webView";

  static final newRoutes = <GetPage>[
    GetPage(name: navigator, page:()=>NavigatorPage()),
    GetPage(name: mainMenu, page:()=>MainMenuPage()),
    GetPage(name: search, page:()=>SearchPage()),
    GetPage(name: listKecamatan, page:()=>ListKecamatanPage()),
    GetPage(name: listTouristAttraction, page:()=>ListTouristAttractionPage()),
    GetPage(name: detailTour, page:()=>DetailTourPage()),
    GetPage(name: pdfReader, page:()=>PdfReaderPage()),
    GetPage(name: webView, page:()=>WebViewPage()),
  ];
}