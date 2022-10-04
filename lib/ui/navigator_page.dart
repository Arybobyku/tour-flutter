import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour/helper/color_palette.dart';
import 'package:tour/routes.dart';
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
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'images/loading.json',
            ),
          ],
        ),
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
    await Future.delayed(const Duration(seconds: 2), () async {
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
