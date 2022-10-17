import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/helper/dummy.dart';
import 'package:jezioto/model/tourist_attraction.dart';
import 'package:jezioto/routes.dart';

class ListKecamatanPage extends StatefulWidget {
  const ListKecamatanPage({Key? key}) : super(key: key);

  @override
  State<ListKecamatanPage> createState() => _ListKecamatanPageState();
}

class _ListKecamatanPageState extends State<ListKecamatanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _map(),
              SizedBox(height: 20),
              _body(),
              SizedBox(height: 20),
              _listAttraction(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _map() {
    return Container(
      height: 435,
      child: Stack(
        children: [
          Image.asset(panguguran.image, width: double.infinity,height: 435),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 15,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorPalette.generalBackgroundSoftColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            panguguran.name,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ColorPalette.generalPrimaryColor,
            ),
          ),
          SizedBox(height: 6),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              panguguran.description,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  Widget _listAttraction() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tourist Attractions:",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
              color: ColorPalette.generalPrimaryColor,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: listKecamatan.first.touristAttractions.length,
            itemBuilder: (context, index) {
              var touristAttraction =
                  listKecamatan.first.touristAttractions[index];
              return Padding(
                padding: EdgeInsets.only(top: index == 0 ? 20 : 0, bottom: 10),
                child: GestureDetector(
                  onTap: () => _gotoDetailTourPage(touristAttraction),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 13),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        CachedNetworkImage(
                          imageUrl: touristAttraction.image,
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
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          placeholder: (context, url) => Container(
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
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
        ],
      ),
    );
  }

  _gotoListTouristAttraction() {
    Get.toNamed(Routes.listTouristAttraction);
  }

  _gotoDetailTourPage(TouristAttraction touristAttraction) {
    Get.toNamed(Routes.detailTour, arguments: touristAttraction);
  }
}
