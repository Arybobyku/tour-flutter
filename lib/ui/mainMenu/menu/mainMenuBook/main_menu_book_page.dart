import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/routes.dart';
import 'package:jezioto/ui/widget/container_left_image_comic.dart';

class MainMenuBookPage extends StatefulWidget {
  const MainMenuBookPage({Key? key}) : super(key: key);

  @override
  State<MainMenuBookPage> createState() => _MainMenuBookPageState();
}

class _MainMenuBookPageState extends State<MainMenuBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: ContainerLeftImageComic(
                onTap: (){
                  Get.toNamed(Routes.pdfReader,arguments: "assets/komiks/parbaban.pdf");
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
