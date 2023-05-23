import 'package:flutter/material.dart';
import 'package:pet_shop/main_screen/welcome_message_widget.dart';
import 'package:pet_shop/styles.dart';

import '../catsjson.dart';
import '../dogsjson.dart';
import '../widgets/header.dart';
import 'animal_list_container.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: headerWidget(),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const WelcomeMessageWidget(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Dogs 🐕",
                      style: fontSourceSansProBlack.copyWith(
                          color: colorDarkGrey, fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  buildAnimalListContainer(DogsJSON.dogs),                      const SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Cats 🐈",
                      style: fontSourceSansProBlack.copyWith(
                          color: colorDarkGrey, fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  buildAnimalListContainer(CatsJSON.cats),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
