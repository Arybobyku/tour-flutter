import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tour/helper/color_palette.dart';
import 'package:tour/helper/constants.dart';

class InputFieldRounded extends StatelessWidget {
  final String hint;
  final String? initialValue;
  final String label;
  final ValueChanged<String> onChange;
  final Widget? suffixIcon;
  final bool secureText;
  final TextInputType keyboardType;
  final String? errortext;
  final FormFieldValidator? validatorCheck;
  const InputFieldRounded(
      {Key? key,
        required this.hint,
        required this.label,
        required this.onChange,
        this.validatorCheck,
        this.initialValue,
        this.suffixIcon,
        this.keyboardType = TextInputType.text,
        this.errortext,
        required this.secureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: TextFormField(
        initialValue: initialValue,
        validator: validatorCheck,
        onChanged: onChange,
        obscureText: secureText,
        cursorColor: ColorPalette.generalPrimaryColor,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          errorText: errortext,
          filled: false,
          hoverColor: ColorPalette.generalPrimaryColor,
          hintStyle: TextStyle(
            color: ColorPalette.generalPrimaryColor
          ),
          labelText: label,
          floatingLabelStyle: TextStyle(
            color: ColorPalette.generalPrimaryColor
          ),
          suffixIcon: suffixIcon,
          focusColor: ColorPalette.generalPrimaryColor,
          border: InputBorder.none
        ),
      ),
    );
  }
}