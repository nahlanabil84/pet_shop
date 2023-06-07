import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_shop/theme.dart';
import '../common_widgets/bottom_navigation_bar.dart';
import 'body_home.dart';
import 'body_cart.dart';
import 'body_profile.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => MaterialApp(
        home: MyHomePage(),
        theme: AppTheme().buildThemeData(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(375, 812),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final int _currentIndex = 0;
  List<Widget> pages = [
    const HomeBodyWidget(),
    const CartBodyWidget(),
    const ProfileBodyWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt((_currentIndex),),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }

}
