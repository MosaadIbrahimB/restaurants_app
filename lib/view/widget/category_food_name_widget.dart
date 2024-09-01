import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_style.dart';
class CategoryFoodNameWidget extends StatelessWidget {
  final String title;
  final Color colorStart;
  final Color colorEnd;

  const CategoryFoodNameWidget(
      {super.key, required this.title, required this.colorStart, required this.colorEnd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 300.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/image/f.png"))),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),

            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  colorStart.withOpacity(.5),
                  colorEnd.withOpacity(.5),
                ])
          // color:
        ),
        child: Center(
          child: Text(
            title,
            style: AppStyle.trendingRestStyle
                .copyWith(color: Colors.white, fontSize: 70.sp),
          ),
        ),
      ),
    );
  }
}
