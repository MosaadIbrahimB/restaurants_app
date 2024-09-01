import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_string.dart';
import '../../view_model/home_screen_view_model.dart';
import 'avatar_image_widget.dart';
import 'head_row_widget.dart';

class FriendWidget extends StatelessWidget {
  const FriendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadRowWidget(
          title: AppString.friends,
          seeAll: AppString.seeAllFriends,
        ),
        SizedBox(
          height: 150.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: HomeScreenViewModel.pathImageList.length,
              itemBuilder: (_, i) => AvatarImageWidget(
                pathImage: HomeScreenViewModel.pathImageList[i],
                radius: 30,
              )),
        )
      ],
    );
  }
}
