import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:pet_shop/styles.dart';

import '../widgets/bottom_navigation_bar.dart';
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
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  List<Widget> pages = [
    const HomeBodyWidget(),
    const CartBodyWidget(),
    const ProfileBodyWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBackground,
        body: pages.elementAt((_currentIndex),),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }

}
