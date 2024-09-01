import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_string.dart';
import 'category_food_name_widget.dart';
import 'head_row_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadRowWidget(
          title: AppString.category,
          seeAll: AppString.seeAllCate,
        ),
        SizedBox(height: 8.h),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryFoodNameWidget(title: AppString.italian,
              colorStart: Color(0xffFF5673),
              colorEnd: Color(0xff802B3A) ,),
            CategoryFoodNameWidget(title: AppString.chinese,
                colorStart:  Color(0xff832BF6),
                colorEnd:  Color(0xffFF4665)),
            CategoryFoodNameWidget(title: AppString.maxican,
                colorStart: Color(0xff2DCEF8),
                colorEnd: Color(0xff832BF6)),
          ],
        )
      ],
    );
  }
}