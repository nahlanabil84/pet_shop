import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Image buildCoverImage(String image) {
  return Image.asset(image,
    height: 350.h,
    width: double.infinity,
    fit: BoxFit.fitHeight,
  );
}
