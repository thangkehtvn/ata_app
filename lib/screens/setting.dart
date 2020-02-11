import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Settings",style: TextStyle(fontFamily: 'Lobster',fontSize: 30,color: Colors.black)),
    );
  }
}