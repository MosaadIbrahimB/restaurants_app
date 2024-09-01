import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/image_stack_widget_model.dart';
import 'container_open_widget.dart';

class ImageStackWidget extends StatelessWidget {
final  ImageStackWidgetModel imageStackWidgetModel;

  const ImageStackWidget({super.key, required this.imageStackWidgetModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 482.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imageStackWidgetModel.pathImage),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 40.w,
            top: 40.w,
            child: ContainerOpenWidget(
              title: imageStackWidgetModel.isOpen?"OPEN":"CLose",
              colorCount: Colors.white,
              colorText: imageStackWidgetModel.isOpen?Colors.green:Colors.red,
            ),
          ),
          Positioned(
            right: 40.w,
            top: 40.w,
            child: ContainerOpenWidget(
              title:imageStackWidgetModel. rate,
              colorCount: Colors.white,
              colorText: const Color(0xff222455),
              icon: Icons.star,
            ),
          ),
        ],
      ),
    );
  }
}
