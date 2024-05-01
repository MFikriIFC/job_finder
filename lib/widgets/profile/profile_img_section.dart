import 'package:flutter/material.dart';

class ProfileImgSection extends StatelessWidget {
  const ProfileImgSection({
    super.key,
    required this.profileImg,
    required this.backgroundHeaderImg,
  });

  final String profileImg;
  final String backgroundHeaderImg;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          backgroundHeaderImg,
          height: 160,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 12,
          bottom: -60,
          child: Container(
            width: 132,
            height: 132,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              image: DecorationImage(
                image: AssetImage(profileImg),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
