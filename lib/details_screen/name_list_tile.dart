import 'package:flutter/material.dart';
import 'package:pet_shop/styles.dart';

ListTile buildNameListTile(String animalName, String animalFrom) {
  return ListTile(
    title: Text(animalName,
      style: fontSourceSansProBlack.copyWith(
          color: colorDarkGrey, fontSize: 20.0),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_outlined,
            size: 16.0,
            color: colorLightGrey,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(animalFrom,
            style: fontSourceSansPro.copyWith(
                color: colorLightGrey),
          ),
        ],
      ),
    ),
    trailing: const Icon(
      Icons.favorite_outline,
      size: 30.0,
      color: colorOrange,
    ),
  );
}
