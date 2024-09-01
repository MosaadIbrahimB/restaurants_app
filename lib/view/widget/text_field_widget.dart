import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/utils/app_color.dart';
import '/utils/app_string.dart';
import '/utils/app_style.dart';
class TextFieldWidget extends StatelessWidget {
  final String ?hintText;
  const TextFieldWidget({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: AppStyle.findResStyle,
        suffixIcon: Icon(
          Icons.tune,
          color: AppColor.searchIconColor,
          size: 100.r,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: AppColor.searchIconColor,
          size: 100.r,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
          BorderSide(color: AppColor.searchIconColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
          BorderSide(color: AppColor.searchIconColor, width: 2),
        ),
      ),
    );
  }
}
