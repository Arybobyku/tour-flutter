import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/helper/dummy.dart';
import 'package:jezioto/routes.dart';

class MainMenuDestinationPage extends StatefulWidget {
  const MainMenuDestinationPage({Key? key}) : super(key: key);

  @override
  State<MainMenuDestinationPage> createState() =>
      _MainMenuDestinationPageState();
}

class _MainMenuDestinationPageState extends State<MainMenuDestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            itemCount: listKabupaten.length,
            itemBuilder: (context, index) {
              var kabupaten = listKabupaten[index];
              return Padding(
                padding: EdgeInsets.only(top: index == 0 ? 20 : 0, bottom: 10),
                child: GestureDetector(
                  onTap: (){
                    if(kabupaten.isAvailable == true)
                      Get.toNamed(Routes.listKecamatan);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                        color: kabupaten.isAvailable == true
                            ? Colors.white
                            : ColorPalette.generalSoftGrey,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(kabupaten.image),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                kabupaten.name,
                                style: TextStyle(fontSize: 18),
                              ),
                              if(kabupaten.isAvailable!=true)
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.timesCircle ,size: 14,color: Colors.redAccent,),
                                    SizedBox(width: 4),
                                    Text(
                                      "Not available",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                )
                            ],
                          ),
                        ),
                        if(kabupaten.isAvailable==true)
                          FaIcon(FontAwesomeIcons.arrowCircleRight,size: 20,color:ColorPalette.generalPrimaryColor,)
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
}
