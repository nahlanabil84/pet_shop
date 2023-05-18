import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_shop/styles.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {super.key, required this.animal, required this.itemIndex});
  final List animal;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Add To Cart",
          style: fontSourceSansProBold.copyWith(color: colorLightOrange),
        ),
        icon: SvgPicture.asset(
          'assets/cart_selected.svg',
          color: colorLightOrange,
        ),
        onPressed: () {},
        backgroundColor: colorDarkGrey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        extendedPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            animal[itemIndex]["image"].toString(),
            height: 350.0,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 300.0),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Card(
                margin: const EdgeInsets.all(0.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 25.0, 30.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                            animal[itemIndex]["name"].toString(),
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
                                Text(
                                  animal[itemIndex]["from"].toString(),
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
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
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
                                        animal[itemIndex]["age"].toString(),
                                        style: fontSourceSansProBold.copyWith(
                                            color: colorOrange),
                                      ),
                                      Text(
                                        "Age",
                                        style: fontSourceSansPro.copyWith(
                                            color: colorLightGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
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
                                        animal[itemIndex]["color"].toString(),
                                        style: fontSourceSansProBold.copyWith(
                                            color: colorOrange),
                                      ),
                                      Text(
                                        "Color",
                                        style: fontSourceSansPro.copyWith(
                                            color: colorLightGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
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
                                        animal[itemIndex]["weight"].toString(),
                                        style: fontSourceSansProBold.copyWith(
                                            color: colorOrange),
                                      ),
                                      Text(
                                        "Weight",
                                        style: fontSourceSansPro.copyWith(
                                            color: colorLightGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "About me",
                          style:
                              fontSourceSansPro.copyWith(color: colorLightGrey),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          animal[itemIndex]["about"].toString(),
                          style:
                              fontSourceSansProBold.copyWith(color: colorGrey),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          animal[itemIndex]["about"].toString(),
                          style:
                              fontSourceSansProBold.copyWith(color: colorGrey),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          animal[itemIndex]["about"].toString(),
                          style:
                              fontSourceSansProBold.copyWith(color: colorGrey),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Photo Album",
                          style:
                              fontSourceSansPro.copyWith(color: colorLightGrey),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                animal[itemIndex]["album"][0].toString(),
                                width: 90,
                                fit: BoxFit.contain,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                animal[itemIndex]["album"][1].toString(),
                                width: 90,
                                fit: BoxFit.contain,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                animal[itemIndex]["album"][2].toString(),
                                width: 90,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
