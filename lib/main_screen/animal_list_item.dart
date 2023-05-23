import 'package:flutter/material.dart';
import 'package:pet_shop/styles.dart';
import 'package:pet_shop/details_screen/details.dart';

SizedBox buildItem(int index, List animal, BuildContext context) {
  return SizedBox(
    width: 150.0,
    child: Card(
      color: colorWhite,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: InkWell(
        // onTap: navigateToDetails(index, animal),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  DetailsScreen(animal: animal, itemIndex: index),
            ),
          );
        },
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    image: AssetImage(
                      animal[index]["image"].toString(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 0.0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      color: colorLightOrange,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3.0, horizontal: 10.0),
                        child: Text(
                          animal[index]["type"].toString(),
                          style: fontSourceSansProBold.copyWith(
                            fontSize: 10.0,
                            color: colorOrange,
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: colorDarkOrange,
                      size: 16.0,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(
                    animal[index]["name"].toString(),
                    style: fontSourceSansProBlack.copyWith(
                        color: colorDarkGrey, fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(
                    animal[index]["date"].toString(),
                    style: fontSourceSansPro.copyWith(
                        color: colorLightGrey, fontSize: 14.0),
                  ),
                ),
              ],
            )),
      ),
    ),
  );
}
