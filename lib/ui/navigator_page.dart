import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:jezioto/routes.dart';
import 'package:lottie/lottie.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    navigated(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/logo/logo_jezioto.png"),
                Text("Jezioto",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: ColorPalette.generalPrimaryColor),),
              ],
            )
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Supported By:",style: TextStyle(fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Image.asset("images/logo/logo_usu.png",height: 35,width: 35,),
                    SizedBox(width: 10),
                    Image.asset("images/logo/kampus_merdeka.png",height: 60,width: 60,)         ,
                    SizedBox(width: 10),
                    Image.asset("images/logo/logo_arsitektur.png",height: 35,width: 35,),
                    SizedBox(width: 10),
                    Image.asset("images/logo/logo_mcsto.jpg",height: 35,width: 40,),
                    SizedBox(width: 4),
                    Image.asset("images/logo/logo_pui.png",height: 40,width: 60,)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  navigated(BuildContext context) async {

    // var storageService = locator<LocalStorageService>();
    // var role = storageService.getIntFromPref(Constants.role);
    // String? userJson = storageService.getStringFromPref(Constants.userModel);
    //
    // var mainMenu = await FirebaseAuth.instance.currentUser??null;
    //
    await Future.delayed(const Duration(seconds: 5), () async {
      Get.offAllNamed(Routes.mainMenu);
      
      // if (mainMenu==null) {
      //   Get.offAllNamed(Routes.login);
      // } else if(role==1){
      //   UserModel userModel = UserModel.fromjson(jsonDecode(userJson!), mainMenu.uid);
      //   Provider.of<AuthProvider>(context,listen: false).setUserModelFromPref(userModel);
      //   Get.offAllNamed(Routes.adminInfo);
      // }else{
      //   UserModel? userModel = UserModel.fromjson(jsonDecode(userJson!), mainMenu.uid);
      //   Provider.of<AuthProvider>(context,listen: false).setUserModelFromPref(userModel);
      //   Get.offAllNamed(Routes.mainMenu);
      // }
    });
  }
}
