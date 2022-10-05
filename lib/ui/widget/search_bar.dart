import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour/helper/color_palette.dart';
import 'package:tour/helper/constants.dart';
import 'package:tour/ui/widget/input_field_rounded.dart';

class SearchBar extends StatelessWidget {
  const SearchBar(
      {Key? key,
      this.onTapSearch,
      this.enable = true,
      this.onChanged,
      this.onEditingCompleted,
      this.title = "Cari Keramik",
      this.onSubmit})
      : super(key: key);
  final Function()? onTapSearch;
  final Function()? onEditingCompleted;
  final Function(String)? onChanged;
  final Function(String)? onSubmit;
  final bool enable;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapSearch,
      child: Container(
        decoration: BoxDecoration(
          color: ColorPalette.generalSoftGrey,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            FaIcon(
              FontAwesomeIcons.search,
              size: 20,
              color: ColorPalette.generalPrimaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                maxLines: 1,
                minLines: 1,
                enabled: enable,
                onChanged: onChanged,
                onEditingComplete: onEditingCompleted,
                onSubmitted: onSubmit,
                decoration: InputDecoration(
                  filled: false,
                  isDense: true,
                  hoverColor: ColorPalette.generalPrimaryColor,
                  hintText: title,
                  hintStyle: TextStyle(
                      color: ColorPalette.generalDarkGrey, fontSize: 18),
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  counterText: null,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
