import 'package:flutter/material.dart';
import 'package:pet_shop/styles.dart';

Row buildDetailsCardList(List animal, int itemIndex){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildDetailsCard(animal[itemIndex]["age"].toString(), "Age"),
      buildDetailsCard(animal[itemIndex]["color"].toString(), "Color"),
      buildDetailsCard(animal[itemIndex]["weight"].toString(), "Weight"),
    ],
  );
}

Card buildDetailsCard(String detail, String title) {
  return Card(
    elevation: 0.0,
    color: colorLightOrange,
    shape: const RoundedRectangleBorder(
      borderRadius:
      BorderRadius.all(Radius.circular(10)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 75.0,
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.center,
          children: [
            Text(
              detail,
              style: fontSourceSansProBold.copyWith(
                  color: colorOrange),
            ),
            Text(
              title,
              style: fontSourceSansPro.copyWith(
                  color: colorLightGrey),
            ),
          ],
        ),
      ),
    ),
  );
}
