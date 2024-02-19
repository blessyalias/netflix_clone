// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:netflix_clone/view/utils/color_constant.dart';
import 'package:netflix_clone/view/utils/dummy_db.dart';
import 'package:netflix_clone/view/utils/image_constant.dart';
import 'package:netflix_clone/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        title: SizedBox(
          width: 138,height: 38,
          child: SafeArea(child: Image.asset("assets/images/logos_netflix (1).png"))),
        backgroundColor: ColorConstants.mainBlack,
        centerTitle: true,
        actions: [SizedBox(
          width: 24,height: 24,
          child: Image.asset("assets/images/pencil.png")),
          SizedBox(
            width: 15,
          )],

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount:DummyDb.userNameImages.length+1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5), 
          itemBuilder: (context, index) =>
          index<DummyDb.userNameImages.length?
           Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => BottomNavScreen(),
                   ),
                   );
                 },
                child: Column(
                  children: [
                    Container(
                      height: 92,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage(
                            DummyDb.userNameImages[index]["image"]!),fit: BoxFit.cover)
                      ),
                      ),
                  ],
                ),
              ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  DummyDb.userNameImages[index]["name"]!,
                style: TextStyle(color: ColorConstants.mainWhite),
                ),
            ],
          )
          :InkWell(
            onTap: () {
              print("Add user");
            },
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image:AssetImage(ImageConstants.add),
                          fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 10,
                ),
                Text("Add profile",
                  style: TextStyle(color: ColorConstants.mainWhite),
                )
              ],
            ),
          )
          ),
        ),
      ),
    );
  }
}