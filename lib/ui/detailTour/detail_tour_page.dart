import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/helper/dummy.dart';
import 'package:jezioto/model/tourist_attraction.dart';
import 'package:jezioto/routes.dart';
import 'package:jezioto/ui/widget/button_rounded.dart';
import 'package:share_plus/share_plus.dart';

class DetailTourPage extends StatefulWidget {
  const DetailTourPage({Key? key}) : super(key: key);

  @override
  State<DetailTourPage> createState() => _DetailTourPageState();
}

class _DetailTourPageState extends State<DetailTourPage> {
  TouristAttraction touristAttraction = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _header(),
                    SizedBox(height: 15),
                    _body(),
                    SizedBox(height: 15),
                    _aspect(),
                  ],
                ),
              ),
            ),
            _bottom(),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 450,
      width: double.infinity,
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: touristAttraction.image,
            imageBuilder: (context, imageProvider) => Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
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
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.1)
                  ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              shape: BoxShape.circle),
                          child: FaIcon(
                            FontAwesomeIcons.arrowLeft,
                            color: ColorPalette.generalPrimaryColor,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              shape: BoxShape.circle),
                          child: FaIcon(
                            FontAwesomeIcons.heart,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Container(
                        height: 70,
                        child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  left: index == 0 ? 10 : 0, right: 10),
                              child: CachedNetworkImage(
                                imageUrl: touristAttraction.image,
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                    ),
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            );
                          },
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  touristAttraction.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Share.share("${touristAttraction.image} \n\n ${touristAttraction.name}", subject: touristAttraction.name);
                },
                child: FaIcon(
                  FontAwesomeIcons.solidShareFromSquare,
                  size: 18,
                  color: ColorPalette.generalPrimaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.locationDot,
                size: 16,
                color: ColorPalette.generalDarkGrey,
              ),
              SizedBox(width: 5),
              Text(
                "Sumatera Utara, Pangururan",
                style: TextStyle(
                    fontSize: 16, color: ColorPalette.generalDarkGrey),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "The story of",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            touristAttraction.title,
             style: TextStyle(fontSize: 18, color: ColorPalette.generalDarkGrey),
          ),
          SizedBox(height: 20),
          Text(
            "Description",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
            style: TextStyle(fontSize: 18, color: ColorPalette.generalDarkGrey),
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
                    color: ColorPalette.generalPrimaryColor,
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

  Widget _bottom() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ButtonRounded(
        onPressed: (){
          if(touristAttraction.pdfPath!=null){
            Get.toNamed(Routes.pdfReader,arguments: touristAttraction.pdfPath);
          }
        },
        text: 'Read a story',
      ),
    );
  }
}
