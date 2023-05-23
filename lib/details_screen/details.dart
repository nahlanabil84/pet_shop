import 'package:flutter/material.dart';
import 'package:pet_shop/styles.dart';

import 'details_cards_list.dart';
import 'photo_album_list.dart';
import 'extended_floating_action_button.dart';
import 'transparent_appbar.dart';
import 'cover_image.dart';
import 'name_list_tile.dart';
import 'about_text.dart';

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
      floatingActionButton: const ExtendedFloatingActionButtonWidget(),
      appBar: const TransparentAppBarWidget(),
      body: Stack(
        children: <Widget>[
          buildCoverImage(
              animal[itemIndex]["image"].toString()),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 300.0),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Card(
                margin: const EdgeInsets.all(0.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 25.0, 30.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildNameListTile(animal[itemIndex]["name"].toString(),
                            animal[itemIndex]["from"].toString()),
                        const SizedBox(
                          height: 20.0,
                        ),
                        buildDetailsCardList(animal, itemIndex),
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
                        buildAboutText(animal[itemIndex]["about"].toString()),
                        const SizedBox(
                          height: 5.0,
                        ),
                        buildAboutText(animal[itemIndex]["about"].toString()),
                        const SizedBox(
                          height: 5.0,
                        ),
                        buildAboutText(animal[itemIndex]["about"].toString()),
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
                        buildPhotoAlbumList(animal,itemIndex),
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