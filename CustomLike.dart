// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class CustomLike extends StatefulWidget {
  CustomLike({Key? key}) : super(key: key);

  @override
  State<CustomLike> createState() => _CustomLikeState();
}

class _CustomLikeState extends State<CustomLike> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 227, 227, 227),
        body: Center(
            child: LikeButton(
                size: 80,
                likeCount: 255,
                countPostion: CountPostion.bottom,
                bubblesColor: BubblesColor(
                    dotPrimaryColor: Colors.blue,
                    dotSecondaryColor: Colors.red),
                circleColor:
                    CircleColor(start: Colors.black, end: Colors.white),
                likeBuilder: (isLiked) {
                  return Icon(
                    Icons.bookmark,
                    color: isLiked ? Colors.blue : Colors.grey,
                    size: 80,
                  );
                })));
  }
}
