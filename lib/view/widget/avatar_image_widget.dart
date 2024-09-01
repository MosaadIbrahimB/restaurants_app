import 'package:flutter/material.dart';

class AvatarImageWidget extends StatelessWidget {
  final String pathImage;
  final double? radius;


  const AvatarImageWidget({
    super.key, required this.pathImage, this.radius=16,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(pathImage),
      ),
    );
  }
}
