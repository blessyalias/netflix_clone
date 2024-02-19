// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_element

import 'package:flutter/material.dart';
import 'package:netflix_clone/view/utils/color_constant.dart';


class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Start Downloads',
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Introducing Downloads for ',
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'You ',
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 11,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: ColorConstants.mainGrey,
                  radius: 87,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Center(
                    child: Text(
                      'SETUP',
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 14),
                    ),
                  ),
                  height: 41,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Center(
                child: Container(
                  child: Center(
                    child: Text(
                      'Find Something To Download',
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 14),
                    ),
                  ),
                  height: 41,
                  width: 257,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainGrey,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}