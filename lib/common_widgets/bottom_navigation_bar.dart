import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBar createState () => _CustomBottomNavigationBar();
}

class _CustomBottomNavigationBar extends State<CustomBottomNavigationBar>{
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
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

        // backgroundColor: colorWhite,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
      );
    }
  }
