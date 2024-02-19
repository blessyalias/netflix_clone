// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/view/utils/color_constant.dart';

class Username extends StatefulWidget {
  const Username({Key? key, required this.imageurl, required this.name})
      : super(key: key);

  final String imageurl;
  final String name;

  @override
  State<Username> createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
            image: DecorationImage(
              image: AssetImage(widget.imageurl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          widget.name,
          style: TextStyle(color: ColorConstants.mainWhite),
        )
      ],
    );
  }
}