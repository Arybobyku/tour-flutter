import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/dummy.dart';
import 'package:jezioto/model/tourist_attraction.dart';
import 'package:jezioto/routes.dart';
import 'package:jezioto/ui/widget/container_tourist_attraction.dart';

class ListTouristAttractionPage extends StatefulWidget {
  const ListTouristAttractionPage({Key? key}) : super(key: key);

  @override
  State<ListTouristAttractionPage> createState() => _ListTouristAttractionPageState();
}

class _ListTouristAttractionPageState extends State<ListTouristAttractionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            itemCount: listKecamatan.first.touristAttractions.length,
            itemBuilder: (context, index) {
              var touristAttraction = listKecamatan.first.touristAttractions[index];
              return Padding(
                padding: EdgeInsets.only(top: index == 0 ? 20 : 0, bottom: 10),
                child: GestureDetector(
                  onTap: ()=>_gotoDetailTourPage(touristAttraction),
                  child:ContainerTouristAttraction(touristAttraction: touristAttraction,)
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  _gotoDetailTourPage(TouristAttraction touristAttraction) {
    Get.toNamed(Routes.detailTour,arguments: touristAttraction);
  }
}
