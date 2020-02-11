import 'package:flutter/material.dart';

class UserField extends StatelessWidget {
  static const routeName = '/passUserName';
  static final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff1b67b2), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff1b67b2), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        prefixIcon: Icon(
          Icons.person,
          color: Color(0xff1b67b2),
          size: 30,
        ),
        // filled: true,
        hintStyle: TextStyle(
            color: Colors.grey[500], fontStyle: FontStyle.italic, fontSize: 17),
        hintText: "User Name",
        //fillColor: Colors.white,
        border: InputBorder.none,
      ),
      validator: (val) => val.isEmpty? 'Username can\'t be empty.' : null,
      controller: name,
    );
  }
}
