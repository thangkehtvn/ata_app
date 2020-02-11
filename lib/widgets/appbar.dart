import 'package:et_ata/widgets/Login/userField.dart';
import 'package:flutter/material.dart';
import 'package:et_ata/widgets/avatar.dart';

class AppbarDefault extends StatelessWidget {
  static const routeName = '/extractUserName';

  @override
  Widget build(BuildContext context) {
    // final UserField args = ModalRoute.of(context).settings.arguments;
    return Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Avatar(),
          Text(UserField.name.text,
              style: TextStyle(
                  fontFamily: 'Lobster', fontSize: 20, color: Colors.white)),
          GestureDetector(
            child: Icon(Icons.power_settings_new),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          )
        ])
        );
  }
}
