// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:netflix_clone/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/search_screen/search_screen.dart';
import 'package:netflix_clone/view/utils/color_constant.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonSCreen(),
    Center(
      child: Text("downloads screen"),
    ),
    Center(
      child: Text("more screen"),
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            print(value);
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: ColorConstants.mainWhite,
          unselectedItemColor: ColorConstants.mainGrey,
          backgroundColor: ColorConstants.mainBlack,
          selectedFontSize: 8.2,
          unselectedFontSize: 8.2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: "Coming soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_sharp), label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
          ],
        ));
  }
}