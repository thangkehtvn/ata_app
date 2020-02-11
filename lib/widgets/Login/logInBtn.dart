import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(colors: [
            new Color(0xff03a7dc),
            Color(0xff1b67b2),
            Color(0xff234da1)
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        ),
        margin: EdgeInsets.all(5),
        child: ListTile(
          title: Text(
            'LOG IN',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
           Navigator.pushNamed(context, '/home');
          },
        ));
  }
}
