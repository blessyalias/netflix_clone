// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/view/search_screen/widget/custom_search_screen_card.dart';
import 'package:netflix_clone/view/utils/color_constant.dart';
import 'package:netflix_clone/view/utils/dummy_db.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            color: ColorConstants.mainGrey,
            child: Row(
              children: [
                Icon(Icons.search_rounded),
                Text("Search"),
                Spacer(),
                Icon(Icons.mic),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              "Search",
              style: TextStyle(color: ColorConstants.mainWhite, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: DummyDb.searchScreenDatas.length,
              itemBuilder: (context, index) => CustomSearchScreenCard(
                imageUrl: DummyDb.searchScreenDatas[index]["imageUrl"].toString(),
                title: DummyDb.searchScreenDatas[index]["movieName"].toString(),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}