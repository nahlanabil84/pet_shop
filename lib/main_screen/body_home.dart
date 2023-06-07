import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_shop/main_screen/welcome_message_widget.dart';

import '../cats_json.dart';
import '../common_widgets/create_gap.dart';
import '../common_widgets/header.dart';
import '../dogs_json.dart';
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
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.all(8.r),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.r),
                    child: const headerWidget(),
                  ),
                  buildGap(10.h),
                  const WelcomeMessageWidget(),
                  buildGap(10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Text(
                      "Dogs 🐕",
                      style: Theme.of(context).textTheme.titleLarge
                    ),
                  ),
                  buildGap(8.h),
                  buildAnimalListContainer(DogsJSON.dogs),
                  buildGap(25.h),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Text(
                      "Cats 🐈",
                      style: Theme.of(context).textTheme.titleLarge
                    ),
                  ),
                  buildGap(8.h),
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
