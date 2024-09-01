import 'package:flutter/material.dart';

import 'avatar_image_widget.dart';
class AvatarImageBackAntherWidget extends StatelessWidget {




  const AvatarImageBackAntherWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return  const Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: 54,
          child:
          AvatarImageWidget(
            pathImage: "assets/image/w2.jpg",),
        ),
        Positioned(
          left: 36,
          child:
          AvatarImageWidget(
            pathImage: "assets/image/w.jpg",),
        ),
        Positioned(
          left: 18,
          child:
          AvatarImageWidget(
            pathImage: "assets/image/man2.jpg",),
        ),
        AvatarImageWidget(
          pathImage: "assets/image/man.jpg",),
        Positioned(
          left: 66,
          top: 8,
          child:
          Text("+2", style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold, color:Colors.white),),),
      ],
    );
  }
}

