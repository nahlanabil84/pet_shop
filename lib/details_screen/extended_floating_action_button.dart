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
        style: Theme.of(context).textTheme.labelLarge,
      ),
      icon: SvgPicture.asset(
        'assets/cart_selected.svg',
        color: colorLightOrange,
      ),
      onPressed: () {},
    );
  }
}
