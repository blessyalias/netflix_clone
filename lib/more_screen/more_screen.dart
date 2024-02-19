// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/global%20widgets/username_card.dart';
import 'package:netflix_clone/view/utils/color_constant.dart';
import 'package:netflix_clone/view/utils/dummy_db.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: DummyDb.userNameImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Username(
                      imageurl:
                          DummyDb.userNameImages[index]["image"].toString(),
                      name: DummyDb.userNameImages[index]["name"].toString(),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstants.mainWhite,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Manage Profiles',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: ColorConstants.mainGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.messenger_outline, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Tell Friends about Netflix',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.mainWhite),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                        fontSize: 11,
                        color: ColorConstants.mainWhite,
                      ),
                      textAlign: TextAlign.justify,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Terms and Conditions',
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 11),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 37,
                          width: 247,
                          color: ColorConstants.mainBlack,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              color: ColorConstants.mainWhite,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Copy Link',
                              style: TextStyle(
                                  color: ColorConstants.mainBlack,
                                  fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/Group 93.png"),
                          VerticalDivider(),
                          Image.asset("assets/images/Group 92.png"),
                          VerticalDivider(),
                          Image.asset("assets/images/Group 94.png"),
                          VerticalDivider(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: ColorConstants.mainWhite,
                              ),
                              Text(
                                'More',
                                style:
                                    TextStyle(color: ColorConstants.mainWhite),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                'assets/images/tick.png',
                height: 40,
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'App Settings',
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 15),
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 15),
                  ),
                  Text(
                    'Help',
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 15),
                  ),
                  Text(
                    'Sign out',
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 15),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}