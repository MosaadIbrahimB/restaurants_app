import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/view/screen/trending_screen.dart';
import 'package:restaurant_app/view/widget/head_row_widget.dart';

import '../../utils/app_string.dart';
import '../widget/bottom_navigation_bar_widget.dart';
import '../widget/category_widget.dart';
import '../widget/friend_widget.dart';
import '../widget/text_field_widget.dart';
import '../widget/trending_restaurants_list_view_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                const TextFieldWidget(hintText:AppString.findRestaurants),
                SizedBox(height: 30.h),
                const HeadRowWidget(
                  title: AppString.trendingRestaurants,
                  seeAll: AppString.seeAll,
                ),
                const TrendingRestaurantsListViewWidget(ishHorizontal: true,),
                SizedBox(height: 16.h),
                SizedBox(height: 55.h),
                const CategoryWidget(),
                SizedBox(height: 55.h),
                const FriendWidget()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff5663FF),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=>TrendingScreen()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}


