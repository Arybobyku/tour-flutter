import 'package:flutter/material.dart';
import 'package:tour/helper/color_palette.dart';
import 'package:tour/ui/mainMenu/widget/main_menu_book_page.dart';
import 'package:tour/ui/mainMenu/widget/main_menu_destination_page.dart';
import 'package:tour/ui/mainMenu/widget/main_menu_home_page.dart';
class MainMenuPage extends StatefulWidget {
  const MainMenuPage({Key? key}) : super(key: key);


  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  int _selectedIndex = 0;
  bool getData = true;

  @override
  void initState() {
    if(getData){
      getData = false;
    }
    super.initState();
  }



  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _pageption = <Widget>[
    MainMenuHomePage(),
    MainMenuDestinationPage(),
    MainMenuBookPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorPalette.generalPrimaryColor,
        selectedItemColor: ColorPalette.generalWhite,
        unselectedItemColor: Colors.grey,
        onTap: (index){
          _onItemTap(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_sharp),
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
