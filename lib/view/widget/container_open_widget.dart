import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerOpenWidget extends StatelessWidget {
  final String title;
  final Color colorCount;
  final Color colorText;
  IconData? icon;
  Color? gradientColorStat;
  Color? gradientColorEnd;

  ContainerOpenWidget({super.key,
    required this.title,
    required this.colorCount,
    required this.colorText,
    this.icon,
    this.gradientColorStat, this.gradientColorEnd});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: (gradientColorStat != null) && (gradientColorEnd != null) ?
        LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[gradientColorStat!, gradientColorEnd!],
        ) : null,
        color: colorCount,
        borderRadius: BorderRadius.circular(8.r),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          icon != null
              ? Icon(
            icon,
            color: const Color(0xffFFCC00),
          )
              : const SizedBox(),
          Text(
            title,
            style: TextStyle(
                fontSize: (gradientColorStat != null) ||
                    (gradientColorEnd != null) ? 35.sp : 40.sp,
                fontWeight: (gradientColorStat != null) ||
                    (gradientColorEnd != null) ? FontWeight.normal : FontWeight
                    .bold,
                color: icon == null ? colorText : const Color(0xff222455)),
          ),
        ],
      ),
    );
  }
}
