import 'package:flutter/material.dart';
import 'package:pet_shop/styles.dart';

Text buildAboutText(String animalAbout) {
  return Text(animalAbout,
    style:
    fontSourceSansProBold.copyWith(color: colorGrey),
  );
}
