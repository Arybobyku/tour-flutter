import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/dummy.dart';
import 'package:jezioto/model/tourist_attraction.dart';
import 'package:jezioto/routes.dart';

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
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 13),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        CachedNetworkImage(
                          imageUrl:touristAttraction.image,
                          imageBuilder: (context, imageProvider) => Container(
                            width: 60,
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          placeholder: (context, url) => Container(
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                touristAttraction.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                touristAttraction.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
