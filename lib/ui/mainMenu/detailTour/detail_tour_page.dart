import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jezioto/helper/color_palette.dart';

class DetailTourPage extends StatefulWidget {
  const DetailTourPage({Key? key}) : super(key: key);

  @override
  State<DetailTourPage> createState() => _DetailTourPageState();
}

class _DetailTourPageState extends State<DetailTourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              SizedBox(height: 15),
              _body(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 450,
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      width: double.infinity,
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/15/17/81/hotspring-pangururan.jpg?w=700&h=-1&s=1",
            imageBuilder: (context, imageProvider) =>
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
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
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
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
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              shape: BoxShape.circle
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.arrowLeft, color: ColorPalette
                              .generalPrimaryColor,),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              shape: BoxShape.circle
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.heart, color: ColorPalette
                              .generalPrimaryColor,),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    padding: EdgeInsets.symmetric( vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Container(
                        height: 70,
                        child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                          return Container(
                            margin: EdgeInsets.only(left: index==0?10:0,right: 10),
                            child: CachedNetworkImage(
                              imageUrl:
                              "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/15/17/81/hotspring-pangururan.jpg?w=700&h=-1&s=1",
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
                        },)
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
          Text(
            "Object Wisata",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
