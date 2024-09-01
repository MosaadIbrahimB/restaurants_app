import 'package:flutter/material.dart';

import '../../utils/app_style.dart';
class HeadRowWidget extends StatelessWidget {
  final String title;
  final String? seeAll;

  const HeadRowWidget({super.key, required this.title,  this.seeAll});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyle.trendingRestStyle,
        ),
        Text(
          seeAll??"",
          style: AppStyle.findResStyle,
        ),
      ],
    );
  }
}
