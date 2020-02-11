import 'package:flutter/material.dart';

class PassField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff1b67b2), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff1b67b2), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(25))
        ),
        prefixIcon: Icon(
          Icons.lock,
          color: Color(0xff1b67b2),
          size: 30,
        ),
        // filled: true,
        hintStyle: TextStyle(
            color: Colors.grey[500], fontStyle: FontStyle.italic, fontSize: 17),
        hintText: "Pass Word",
        //fillColor: Colors.white,
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      obscureText: true,
    );
  }
}
