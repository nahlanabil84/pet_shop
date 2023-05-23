import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_shop/styles.dart';

class ExtendedFloatingActionButtonWidget extends StatelessWidget {
  const ExtendedFloatingActionButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text(
        "Add To Cart",
        style: fontSourceSansProBold.copyWith(color: colorLightOrange),
      ),
      icon: SvgPicture.asset(
        'assets/cart_selected.svg',
        color: colorLightOrange,
      ),
      onPressed: () {},
      backgroundColor: colorDarkGrey,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      extendedPadding:
      const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
    );
  }
}
