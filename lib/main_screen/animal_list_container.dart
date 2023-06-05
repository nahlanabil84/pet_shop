import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'animal_list_item.dart';

Container buildAnimalListContainer(List animal) {
  return Container(
    height: 180.h,
    margin: EdgeInsets.only(left: 12.w),
    child: ListView.builder(
      itemCount: animal.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          child: buildItem(index, animal, context),
        );
      },
    ),
  );
}

