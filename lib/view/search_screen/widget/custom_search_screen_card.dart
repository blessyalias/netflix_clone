// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix_clone/view/utils/color_constant.dart';

class CustomSearchScreenCard extends StatelessWidget {
  const CustomSearchScreenCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorConstants.mainGrey,
        child: Row(
          children: [
            Container(
              height: 76,
              width: 146,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 30),
            Text(title),
            Spacer(),
            Icon(Icons.play_circle_outline_outlined),
            SizedBox(width: 20),
          ],
        ));
  }
}