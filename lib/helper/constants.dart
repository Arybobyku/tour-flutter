import 'package:flutter/material.dart';
import 'package:jezioto/helper/color_palette.dart';
import 'package:intl/intl.dart';

class Constants{
  static const String baseAPIUrlImg = 'https://herpes.my.id/jezioto/images/komiks/';
  static const String baseAPIUrlAspek = 'https://herpes.my.id/jezioto/images/aspek/';
  static const String baseAPIUrlAssets = 'https://herpes.my.id/jezioto/assets/';
  static const String baseAPIUrlImgDestinasi = 'https://herpes.my.id/jezioto/images/destinasi/';

  static const String userName = 'userName';
  static const String role = 'role';
  static const String userModel = 'userModel';
  static const String notifikasiPengembalian = 'notifikasiPengembalian';
}
final kRoundedContainer = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  border: Border.all(color: ColorPalette.generalPrimaryColor,width: 2),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 7,
      offset: Offset(0, 1), // changes position of shadow
    ),
  ],
);