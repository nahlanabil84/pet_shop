import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Row buildPhotoAlbumList(List animal, int itemIndex){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildPhotoClipRRect(animal, itemIndex, 0),
      buildPhotoClipRRect(animal, itemIndex, 1),
      buildPhotoClipRRect(animal, itemIndex, 2),
    ],
  );
}

ClipRRect buildPhotoClipRRect(List animal, int itemIndex, int item) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10.r),
    child: Image.asset(
      animal[itemIndex]["album"][item].toString(),
      width: 90.w,
      fit: BoxFit.contain,
    ),
  );
}
