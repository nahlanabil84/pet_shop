
import 'package:flutter/material.dart';
import 'package:pet_shop/styles.dart';

Row buildDetailsCardList(List animal, int itemIndex, BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildDetailsCard(animal[itemIndex]["age"].toString(), "Age", context),
      buildDetailsCard(animal[itemIndex]["color"].toString(), "Color", context),
      buildDetailsCard(animal[itemIndex]["weight"].toString(), "Weight", context),
    ],
  );
}

Card buildDetailsCard(String detail, String title, BuildContext context) {
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
              style: Theme.of(context).textTheme.labelMedium
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall
            ),
          ],
        ),
      ),
    ),
  );
}
