import 'package:flutter/material.dart';

Row buildPhotoAlbumList(List animal, int itemIndex){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildPhotoClipRRect(animal, itemIndex, 0),
      buildPhotoClipRRect(animal, itemIndex, 1),
      buildPhotoClipRRect(animal, itemIndex, 2),
    ],
  );
}

ClipRRect buildPhotoClipRRect(List animal, int itemIndex, int item) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Image.asset(
      animal[itemIndex]["album"][item].toString(),
      width: 90,
      fit: BoxFit.contain,
    ),
  );
}
