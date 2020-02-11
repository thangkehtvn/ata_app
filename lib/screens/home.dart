import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:et_ata/screens/profile.dart';
import 'package:et_ata/screens/setting.dart';
import 'package:et_ata/screens/tracking.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var backgroundColor = Color(0xFFFFFFFF);
  var secondColor = Color(0xFFf8716b);
  int _curentIndex = 0;
  final List<Color> backgroundCl = [
    new Color(0xff03a7dc),
    Color(0xff1b67b2),
    Color(0xff234da1)
  ];
  final List<Widget> _children = [
    Tracking(),
    Profile(),
    Setting(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        
        body: _children[_curentIndex],
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            unselectedItemIconColor: Color(0xff234da1),
            unselectedItemTextStyle: TextStyle(color: Color(0xff1b67b2)),
            barBackgroundColor: backgroundColor,
            selectedItemBackgroundColor: Color(0xff1b67b2),
            selectedItemIconColor: Colors.white,
            selectedItemLabelColor: Colors.black,
          ),
          selectedIndex: _curentIndex,
          onSelectTab: (index) {
            setState(() {
              _curentIndex = index;
            });
          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.home,
              label: 'Home',
            ),
            FFNavigationBarItem(
              iconData: Icons.check_circle_outline,
              label: 'CheckIn/Out',
            ),
            FFNavigationBarItem(
              iconData: Icons.note,
              label: 'Report',
            ),
            FFNavigationBarItem(
              iconData: Icons.settings,
              label: 'Settings',
            ),
          ],
        ),
      ),

    );
  }
}
