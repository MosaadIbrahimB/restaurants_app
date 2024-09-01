import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ContainerBanerWidget extends StatelessWidget {
  final String title;
  final Color colorStart;
  final Color colorEnd;

  const ContainerBanerWidget(
      {super.key, required this.title, required this.colorStart, required this.colorEnd});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        gradient: LinearGradient(colors: [colorStart, colorEnd]),
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white,fontSize: 12),
      ),
    );
  }
}
