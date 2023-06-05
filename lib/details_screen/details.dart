import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_shop/styles.dart';

import '../widgets/create_gap.dart';
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
            padding: EdgeInsetsDirectional.only(top: 300.h),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Card(
                margin: const EdgeInsets.all(0.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 15.h, 20.w, 10.h),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildNameListTile(animal[itemIndex]["name"].toString(),
                            animal[itemIndex]["from"].toString()),
                        buildGap(8.h),
                        buildDetailsCardList(animal, itemIndex),
                        buildGap(15.h),
                        Text(
                          "About me",
                          style:
                              fontSourceSansPro.copyWith(color: colorLightGrey),
                        ),
                        buildGap(5.h),
                        buildAboutText(animal[itemIndex]["about"].toString()),
                        buildGap(5.h),
                        buildAboutText(animal[itemIndex]["about"].toString()),
                        buildGap(5.h),
                        buildAboutText(animal[itemIndex]["about"].toString()),
                        buildGap(15.h),
                        Text(
                          "Photo Album",
                          style:
                              fontSourceSansPro.copyWith(color: colorLightGrey),
                        ),
                        buildGap(5.h),
                        buildPhotoAlbumList(animal,itemIndex),
                        buildGap(70.h),
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