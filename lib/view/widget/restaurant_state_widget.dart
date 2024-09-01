import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/image_stack_widget_model.dart';
import '../../model/restaurant_state_widget_model.dart';
import '../../utils/app_style.dart';
import 'avatar_image_back_anther_widget.dart';
import 'container_baner_widget.dart';
import 'image_stack_widget.dart';
class RestaurantStateWidget extends StatelessWidget {

  final RestaurantStateWidgetModel restaurantStateWidgetModel;

  const RestaurantStateWidget({super.key, required this.restaurantStateWidgetModel});

  @override
  Widget build(BuildContext context) {
    return   Card(
      child: SizedBox(
        width: 909.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageStackWidget(imageStackWidgetModel:restaurantStateWidgetModel.imageStackWidgetModel ,),
            const SizedBox(height: 8),
           Container(
             padding: const EdgeInsets.symmetric(horizontal: 8.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     Text(restaurantStateWidgetModel.title, style: AppStyle.happyBones),
                     const SizedBox(width: 4),
                     ContainerBanerWidget(
                       title: restaurantStateWidgetModel.foodName,
                       colorStart: const Color(0xffFF8C48),
                       colorEnd: const Color(0xffFF5673),
                     ),
                     SizedBox(
                       width: 8.w,
                     ),
                     ContainerBanerWidget(
                       title:restaurantStateWidgetModel.distanceRestaurant,
                       colorStart:const Color(0xff848DFF),
                       colorEnd:const Color(0xff848DFF),
                     ),

                     Container(
                       alignment: Alignment.centerRight,
                         // color: Colors.red,
                         width: 50,
                         child: const AvatarImageBackAntherWidget())
                   ],
                 ),
                 Text(
                   restaurantStateWidgetModel.address,
                   style: AppStyle.broomSt,
                 )
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
