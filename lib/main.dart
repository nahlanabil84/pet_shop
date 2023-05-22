import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_shop/details.dart';
import 'package:pet_shop/styles.dart';

import 'catsjson.dart';
import 'dogsjson.dart';

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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBackground,
        body: SingleChildScrollView(
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
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/nav_icon.svg",
                                height: 20.0),
                            const CircleAvatar(
                              radius: 20.0,
                              backgroundColor: colorAvatarBackground,
                              backgroundImage: NetworkImage(
                                  "https://www.goodmorningimagesdownload.com/wp-content/uploads/2021/12/Free-Insta-Profile-Wallpaper.jpg"),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Stack(
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
                      ),
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
                      Container(
                        height: 175.0,
                        margin: const EdgeInsets.only(left: 12.0),
                        child: ListView.builder(
                          itemCount: DogsJSON.dogs.length,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              child: buildItem(index, DogsJSON.dogs),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
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
                      Container(
                        height: 175.0,
                        margin: const EdgeInsets.only(left: 12.0),
                        child: ListView.builder(
                          itemCount: CatsJSON.cats.length,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              child: buildItem(index, CatsJSON.cats),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? SvgPicture.asset('assets/home_selected.svg')
              : SvgPicture.asset('assets/home_unselected.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/cart_selected.svg')
                : SvgPicture.asset('assets/cart_unselected.svg'),
            label: ''),
        BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/profile_selected.svg')
                : SvgPicture.asset('assets/profile_unselected.svg'),
            label: ''),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      backgroundColor: colorWhite,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  SizedBox buildItem(int index, List animal) {
    return SizedBox(
      width: 150.0,
      child: Card(
        color: colorWhite,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: InkWell(
          // onTap: navigateToDetails(index, animal),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(animal: animal, itemIndex: index),
              ),
            );
          },
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                      image: AssetImage(
                        animal[index]["image"].toString(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        color: colorLightOrange,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 10.0),
                          child: Text(
                            animal[index]["type"].toString(),
                            style: fontSourceSansProBold.copyWith(
                              fontSize: 10.0,
                              color: colorOrange,
                            ),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: colorDarkOrange,
                        size: 16.0,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Text(
                      animal[index]["name"].toString(),
                      style: fontSourceSansProBlack.copyWith(
                          color: colorDarkGrey, fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Text(
                      animal[index]["date"].toString(),
                      style: fontSourceSansPro.copyWith(
                          color: colorLightGrey, fontSize: 14.0),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
