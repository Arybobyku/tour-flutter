import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/helper/dummy.dart';
import 'package:jezioto/model/tourist_attraction.dart';
import 'package:jezioto/provider/database_provider.dart';
import 'package:jezioto/routes.dart';
import 'package:jezioto/ui/widget/button_rounded.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class DetailTourPage extends StatefulWidget {
  const DetailTourPage({Key? key}) : super(key: key);

  @override
  State<DetailTourPage> createState() => _DetailTourPageState();
}

class _DetailTourPageState extends State<DetailTourPage> {
  TouristAttraction touristAttraction = Get.arguments;

  bool isLike = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<DatabaseProvider>(context, listen: false).openBox();
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
                    if (touristAttraction.aspects != null) _aspect(),
                    SizedBox(height: 40),
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
                        onTap: () {
                          setState(() {
                            isLike = !isLike;
                            if (isLike) {
                              Provider.of<DatabaseProvider>(context,
                                      listen: false)
                                  .setFavorite(touristAttraction);
                            } else {
                              Provider.of<DatabaseProvider>(context,
                                      listen: false)
                                  .removeFavorite(touristAttraction);
                            }
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              shape: BoxShape.circle),
                          child: FaIcon(
                            isLike
                                ? FontAwesomeIcons.solidHeart
                                : FontAwesomeIcons.heart,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Container(
                      height: 70,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
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
                      ),
                    ),
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Share.share(
                      "${touristAttraction.image} \n\n ${touristAttraction.name}",
                      subject: touristAttraction.name);
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
          Divider(
            height: 1,
          ),
          SizedBox(height: 20),
          Text(
            touristAttraction.title,
            style: TextStyle(
                fontSize: 26,
                color: ColorPalette.generalPrimaryColor,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          CachedNetworkImage(
            imageUrl: touristAttraction.imageKomik ?? "",
            imageBuilder: (context, imageProvider) => Container(
              width: MediaQuery.of(context).size.width / 2.9,
              height: 170,
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
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          SizedBox(height: 15),
          Text(
            "Description",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColorPalette.generalPrimaryColor),
          ),
          SizedBox(height: 4),
          Text(
            touristAttraction.title,
            style: TextStyle(fontSize: 18, color: ColorPalette.generalDarkGrey),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget _aspect() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aspect",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColorPalette.generalPrimaryColor),
          ),
          SizedBox(height: 15),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 20),
            physics: NeverScrollableScrollPhysics(),
            itemCount: touristAttraction.aspects?.length,
            itemBuilder: (context, index) {
              var aspect = touristAttraction.aspects![index];
              return GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.pdfReader, arguments: aspect.value);
                },
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: ColorPalette.generalGrey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.peopleLine,
                              color: ColorPalette.generalPrimaryColor,
                              size: 15,
                            ),
                            SizedBox(width: 6),
                            Text(aspect.name),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      CachedNetworkImage(
                        imageUrl: touristAttraction.imageKomik ?? "",
                        imageBuilder: (context, imageProvider) => Container(
                          width: MediaQuery.of(context).size.width / 2.9,
                          height: 170,
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
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _bottom() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ButtonRounded(
        onPressed: () {
          if (touristAttraction.pdfPath != null) {
            Get.toNamed(Routes.pdfReader, arguments: touristAttraction.pdfPath);
          }
        },
        text: 'Read a story',
      ),
    );
  }
}
