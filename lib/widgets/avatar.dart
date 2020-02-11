import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String img;
  Avatar([this.img = 'assets/images/leoke.jpg']);
   @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(
         img),
      radius: 25,
    );
  }
}