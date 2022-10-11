import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/helper/dummy.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            itemCount: listKecamatan.length,
            itemBuilder: (context, index) {
              var kecamatan = listKecamatan[index];
              return Padding(
                padding: EdgeInsets.only(top: index == 0 ? 20 : 0, bottom: 10),
                child: GestureDetector(
                  onTap: ()=>_gotoListTouristAttraction(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage("images/kabupaten/samosir.png"),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                kecamatan.name,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                          FaIcon(
                            FontAwesomeIcons.arrowCircleRight,
                            size: 20,
                            color: ColorPalette.generalPrimaryColor,
                          )
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

  _gotoListTouristAttraction(){
    Get.toNamed(Routes.listTouristAttraction);
  }

}
