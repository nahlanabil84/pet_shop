
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_shop/styles.dart';

import '../widgets/create_gap.dart';

ListTile buildNameListTile(String animalName, String animalFrom, BuildContext context) {
  return ListTile(
    title: Text(animalName,
      style: Theme.of(context).textTheme.titleLarge
    ),
    subtitle: Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            size: 16.h,
            color: colorLightGrey,
          ),
          buildGap(5.h),
          Text(animalFrom,
            style: Theme.of(context).textTheme.bodyMedium
          ),
        ],
      ),
    ),
    trailing: Icon(
      Icons.favorite_outline,
      size: 30.h,
      color: colorOrange,
    ),
  );
}
