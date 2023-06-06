import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_shop/styles.dart';

class AppTheme{
  ThemeData buildThemeData() {
    return ThemeData(
      primaryColor: colorOrange,

      scaffoldBackgroundColor: colorBackground,

      //colorScheme: ColorScheme.fromSwatch(primarySwatch: colorDarkOrange),

      fontFamily: 'Source Sans Pro',

      appBarTheme: buildAppBarTheme(),

      textTheme: buildTextTheme(),

      bottomNavigationBarTheme: buildBottomNavigationBarThemeData(),

      floatingActionButtonTheme: buildFloatingActionButtonThemeData(),
    );
  }

  FloatingActionButtonThemeData buildFloatingActionButtonThemeData() {
    return FloatingActionButtonThemeData(
      backgroundColor: colorDarkGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      extendedPadding:
      EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
    );
  }

  BottomNavigationBarThemeData buildBottomNavigationBarThemeData() {
    return const BottomNavigationBarThemeData(
      backgroundColor: colorWhite,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  AppBarTheme buildAppBarTheme() {
    return const AppBarTheme(
      iconTheme: IconThemeData(
        color: colorBlack, //change your color here
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  TextTheme buildTextTheme() {
    return TextTheme(
      displayLarge: fontSourceSansProBold.copyWith(
        fontSize: 16.sp, color: colorBlack),

      displayMedium: fontSourceSansProLight.copyWith(
        fontSize: 16.sp, color: colorBlack),

      displaySmall: fontSourceSansPro.copyWith(fontSize: 14.sp,
        color: colorBlack),

      titleLarge: fontSourceSansProBlack.copyWith(
          color: colorDarkGrey, fontSize: 18.sp),

      titleMedium: fontSourceSansProBlack.copyWith(
          color: colorDarkGrey, fontSize: 14.sp),

      titleSmall: fontSourceSansProBold.copyWith(
          fontSize: 8.sp, color: colorOrange),

      //change size
      bodyMedium: fontSourceSansProBold.copyWith(
          color: colorGrey, fontSize: 10.sp),

      bodySmall: fontSourceSansPro.copyWith(
          color: colorLightGrey, fontSize: 12.sp),

      //change size
      headlineSmall: fontSourceSansPro.copyWith(
          color: colorLightGrey, fontSize: 10.sp),
      //change size
      labelMedium: fontSourceSansProBold.copyWith(
          color: colorOrange, fontSize: 10.sp),
      //change size
      labelLarge: fontSourceSansProBold.copyWith(
          color: colorLightOrange, fontSize: 10.sp),

    );
  }
}
