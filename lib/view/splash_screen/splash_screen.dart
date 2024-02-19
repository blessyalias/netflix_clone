// ignore_for_file: camel_case_types, prefer_const_constructors, annotate_overrides

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/view/user_name_screen/user_name_screen.dart';
import 'package:netflix_clone/view/utils/color_constant.dart';
import 'package:netflix_clone/view/utils/image_constant.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => UserNameScreen(),),);
  });

    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(child: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: [
          Image.asset(ImageConstants.netflixPrimaryLogo),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            color: ColorConstants.mainRed,
          )
        ],
      )),
    );
  }
}