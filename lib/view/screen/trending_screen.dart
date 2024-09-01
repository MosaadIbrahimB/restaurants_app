import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/app_string.dart';
import 'package:restaurant_app/view/widget/head_row_widget.dart';

import '../widget/text_field_widget.dart';
import '../widget/trending_restaurants_list_view_widget.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadRowWidget(title: AppString.trendingRestaurants),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFieldWidget(hintText: "Search"),
             Expanded(
                child: TrendingRestaurantsListViewWidget())
          ],
        ),
      ),
    );
  }
}
