import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/ui/mainMenu/menu/mainMenuBook/main_menu_book_page.dart';

import 'menu/mainMenuDestination/main_menu_destination_page.dart';
import 'menu/mainMenuFavorite/main_menu_favorite_page.dart';
import 'menu/mainMenuHome/main_menu_home_page.dart';
class MainMenuPage extends StatefulWidget {
  const MainMenuPage({Key? key}) : super(key: key);


  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  int _selectedIndex = 0;
  bool getData = true;




  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _pageption = <Widget>[
    MainMenuHomePage(),
    MainMenuDestinationPage(),
    MainMenuFavoritePage(),
    MainMenuBookPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorPalette.generalPrimaryColor,
        unselectedItemColor: ColorPalette.generalGrey,
        showUnselectedLabels: false,
        onTap: (index){
          _onItemTap(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home,size: 18,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidMap,size: 18,),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidHeart,size: 18,),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.book,size: 18,),
            label: 'Comic',
          ),
        ],
      ),
      body: SafeArea(
        child: _pageption[_selectedIndex],
      ),
    );
  }
}
