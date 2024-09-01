import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/utils/app_color.dart';
class AppStyle{
  static TextStyle findResStyle=TextStyle(
    color: AppColor.findHintColor,
    fontSize: 48.sp,
    fontFamily: "Josef"
  );
  static TextStyle trendingRestStyle=TextStyle(
    color: AppColor.trendingRestColor,
    fontSize: 60.sp,
    fontFamily: "Josef",
     fontWeight: FontWeight.w400
  );


  static TextStyle happyBones=TextStyle(
      color: const Color(0xff3E3F68),
      fontFamily: "Josef",
      fontSize: 50.sp,
      fontWeight: FontWeight.w800);
  static TextStyle broomSt=TextStyle(
      color: const Color(0xff8A98BA), fontSize: 36.sp);
}