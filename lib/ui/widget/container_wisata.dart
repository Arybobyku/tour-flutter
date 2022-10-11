import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/model/tourist_attraction.dart';

class ContainerWisata extends StatelessWidget {
  const ContainerWisata({Key? key, required this.touristAttraction}) : super(key: key);

  final TouristAttraction touristAttraction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1.2,
            blurRadius: 5,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl:touristAttraction.image,
            imageBuilder: (context, imageProvider) => Container(
              width: 200,
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              height: 150,
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
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 touristAttraction.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.locationDot,
                      size: 16,
                      color: ColorPalette.generalPrimaryColor,
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        "Pangururan",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 6),
                    FaIcon(
                      FontAwesomeIcons.solidHeart,
                      size: 16,
                      color: ColorPalette.generalPrimaryColor,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
