import 'package:flutter/material.dart';
import 'package:pet_shop/styles.dart';

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
          ),
          child: Card(
            color: colorWelcomeCardBackground,
            shape: const RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(30)),
            ),
            child: SizedBox(
              height: 120.0,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 110.0, right: 10.0),
                child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hello ",
                            style: fontSourceSansProLight
                                .copyWith(
                              fontSize: 18.0,
                              color: colorBlack,
                            ),
                          ),
                          Text(
                            "Nahla 👋",
                            style: fontSourceSansProBold
                                .copyWith(
                              fontSize: 18.0,
                              color: colorBlack,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Ready for an amazing and lucky experience 🐈🐕‍",
                        style: fontSourceSansPro.copyWith(
                          fontSize: 16.0,
                          color: colorBlack,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
        const Image(
          image:
          AssetImage("assets/images/cat_welcome_msg.png"),
        ),
      ],
    );
  }
}
