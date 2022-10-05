import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour/helper/color_palette.dart';
import 'package:tour/ui/widget/container_wisata.dart';
import 'package:tour/ui/widget/search_bar.dart';

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
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 200,
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/15/17/81/hotspring-pangururan.jpg?w=700&h=-1&s=1",
            imageBuilder: (context, imageProvider) => Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.1)
                    ]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Object Wisata 1",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24),
                ),
              ),
            ),
          ),
        ],
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
