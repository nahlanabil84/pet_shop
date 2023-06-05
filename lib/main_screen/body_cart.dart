import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_shop/styles.dart';

class CartBodyWidget extends StatelessWidget {
  const CartBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Cart",
        style: fontSourceSansProBlack.copyWith(
            color: colorDarkGrey, fontSize: 42.sp),
      ),
    );
  }
}
