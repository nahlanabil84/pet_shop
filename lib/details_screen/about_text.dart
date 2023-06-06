import 'package:flutter/material.dart';
//import 'package:pet_shop/styles.dart';

Text buildAboutText(String animalAbout, BuildContext context) {
  return Text(animalAbout,
    style: Theme.of(context).textTheme.bodyMedium,
  );
}
