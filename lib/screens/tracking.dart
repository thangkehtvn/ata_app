import 'package:et_ata/models/AttendanceRecord.dart';
import 'package:et_ata/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: AppbarDefault(),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  new Color(0xff03a7dc),
                  Color(0xff1b67b2),
                  Color(0xff234da1)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            )),
        body: CheckQR());
  }
}
