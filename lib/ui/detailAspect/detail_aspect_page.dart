import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/dummy.dart';
import 'package:jezioto/routes.dart';

class DetailAspectPage extends StatefulWidget {
  const DetailAspectPage({Key? key}) : super(key: key);

  @override
  State<DetailAspectPage> createState() => _DetailAspectPageState();
}

class _DetailAspectPageState extends State<DetailAspectPage> {
  String aspect = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Aspect $aspect"),
        leading: InkWell(
          onTap: ()=>Get.back(),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  itemCount: listTouristAttraction.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var touristAttraction = listTouristAttraction[index];
                    return touristAttraction.aspects != null
                        ? GestureDetector(
                            onTap: () {
                              var aspectPath = touristAttraction.aspects?.where((element) => element.name==aspect).first;
                              Get.toNamed(Routes.imageGallery, arguments: aspectPath!.value);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        touristAttraction.imageKomik ?? "",
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.9,
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
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Aspect $aspect",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          touristAttraction.title,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : SizedBox();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
