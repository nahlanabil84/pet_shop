import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_shop/styles.dart';
import 'package:pet_shop/details_screen/details.dart';

import '../widgets/create_gap.dart';

SizedBox buildItem(int index, List animal, BuildContext context) {
  return SizedBox(
    width: 150.w,
    child: Card(
      color: colorWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
      ),
      child: InkWell(
        // onTap: navigateToDetails(index, animal),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  DetailsScreen(animal: animal, itemIndex: index),
            ),
          );
        },
        child: Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Image(
                    image: AssetImage(
                      animal[index]["image"].toString(),
                    ),
                    height: 80.h,
                    width: 130.w,
                    fit: BoxFit.cover,
                  ),
                ),
                buildGap(5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                      color: colorLightOrange,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 3.h, horizontal: 10.w),
                        child: Text(
                          animal[index]["type"].toString(),
                          style: Theme.of(context).textTheme.titleSmall
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: colorDarkOrange,
                      size: 16.r,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: Text(
                    animal[index]["name"].toString(),
                    style: Theme.of(context).textTheme.titleMedium
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: Text(
                    animal[index]["date"].toString(),
                    style: Theme.of(context).textTheme.bodySmall
                  ),
                ),
              ],
            ),
        ),
      ),
    ),
  );
}
