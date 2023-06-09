import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransparentAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const TransparentAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 4.w),
      child: AppBar(
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}