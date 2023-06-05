import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_shop/styles.dart';

class headerWidget extends StatelessWidget {
  const headerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/nav_icon.svg",
            height: 20.h),
        CircleAvatar(
          radius: 20.r,
          backgroundColor: colorAvatarBackground,
          backgroundImage: const NetworkImage(
              "https://www.goodmorningimagesdownload.com/wp-content/uploads/2021/12/Free-Insta-Profile-Wallpaper.jpg"),
        ),
      ],
    );
  }
}
