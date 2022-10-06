import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/helper/dummy.dart';
import 'package:jezioto/routes.dart';
import 'package:jezioto/ui/widget/container_wisata.dart';
import 'package:jezioto/ui/widget/search_bar.dart';
import 'package:jezioto/ui/widget/slider_container.dart';

class MainMenuHomePage extends StatefulWidget {
  const MainMenuHomePage({Key? key}) : super(key: key);

  @override
  State<MainMenuHomePage> createState() => _MainMenuHomePageState();
}

class _MainMenuHomePageState extends State<MainMenuHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              SizedBox(height: 10),
              _aspect(),
              SizedBox(height: 25),
              _slider(),
              SizedBox(height: 25),
              _recommended(),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome, Boby ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Discover the beauty of Indonesia",
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorPalette.generalDarkGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: ColorPalette.generalPrimaryColor,
                    shape: BoxShape.circle),
                child: Text(
                  "B",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () => _gotoSearchPage(),
            child: SearchBar(
              title: "Search destination...",
              enable: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _aspect() {
    return Container(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dummyAspect.length,
        itemBuilder: (context, index) {
          var name = dummyAspect[index];
          return Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? 20 : 8,
                right: index == dummyAspect.length - 1 ? 20 : 0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: ColorPalette.generalGrey,
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.peopleLine,
                    size: 15,
                  ),
                  SizedBox(width: 6),
                  Text(name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _slider() {
    return Container(
      height: 200,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: PageController(viewportFraction: 0.9),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 5, right: 10),
            child: GestureDetector(
              onTap: () => _gotoDetailTourPage(),
              child: SliderContainer(),
            ),
          );
        },
      ),
    );
  }

  Widget _recommended() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Pangururan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Text(
                "View All",
                style: TextStyle(color: ColorPalette.generalPrimaryColor),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 260,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: 20, bottom: 10, top: 10, right: index == 3 ? 20 : 0),
                child: GestureDetector(
                  onTap: () {
                    _gotoDetailTourPage();
                  },
                  child: ContainerWisata(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  _gotoSearchPage() {
    Get.toNamed(Routes.search);
  }

  _gotoDetailTourPage() {
    Get.toNamed(Routes.detailTour);
  }
}
