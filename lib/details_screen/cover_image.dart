import 'package:flutter/material.dart';

Image buildCoverImage(String image) {
  return Image.asset(image,
    height: 350.0,
    width: double.infinity,
    fit: BoxFit.fitHeight,
  );
}
