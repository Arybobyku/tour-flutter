import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jezioto/helper/color_palette.dart';
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
              SizedBox(height: 25),
              _slider(),
              SizedBox(height: 25),
              _recommended(),
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
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Discover The beauty of Indonesia",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorPalette.generalDarkGrey,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SearchBar(
            title: "Search destination...",
            enable: false,
          ),
        ],
      ),
    );
  }

  Widget _slider() {
    return Container(
      height: 200,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: PageController(
          viewportFraction: 0.9
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(padding: EdgeInsets.only(left: 5,right: 10),
          child: SliderContainer());
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
                child: ContainerWisata(),
              );
            },
          ),
        ),
      ],
    );
  }
}
