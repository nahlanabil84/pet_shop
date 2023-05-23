import 'package:flutter/material.dart';
import 'package:pet_shop/styles.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Profile",
        style: fontSourceSansProBlack.copyWith(
            color: colorDarkGrey, fontSize: 42.0),
      ),
    );
  }
}
