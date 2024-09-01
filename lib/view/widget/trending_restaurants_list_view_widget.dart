import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/view/widget/restaurant_state_widget.dart';

import '../../view_model/home_screen_view_model.dart';

class TrendingRestaurantsListViewWidget extends StatelessWidget {
  final bool ishHorizontal;
  const TrendingRestaurantsListViewWidget({super.key,  this.ishHorizontal=false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ishHorizontal?750.h:null,
      child: ListView.separated(
        scrollDirection: ishHorizontal?Axis.horizontal:Axis.vertical,
        itemCount: HomeScreenViewModel.restaurantList.length,
        itemBuilder: (BuildContext context, int index) => RestaurantStateWidget(
          restaurantStateWidgetModel: HomeScreenViewModel.restaurantList[index],
        ),
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: 40.w),
      ),
    );
  }
}
