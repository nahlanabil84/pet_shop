import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_shop/styles.dart';

import '../common_widgets/create_gap.dart';

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 15.w,
          ),
          child: Card(
            color: colorWelcomeCardBackground,
            shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(30.r)),
            ),
            child: SizedBox(
              height: 130.h,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 110.w, right: 10.w),
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
                            style: Theme.of(context).textTheme.displayMedium
                          ),
                          Text(
                            "Nahla 👋",
                            style: Theme.of(context).textTheme.displayLarge
                          )
                        ],
                      ),
                      buildGap(5.h),
                      Text(
                        "Ready for an amazing and lucky experience 🐈🐕‍",
                        style: Theme.of(context).textTheme.displaySmall
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
