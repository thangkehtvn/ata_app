import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CheckQR extends StatefulWidget {
  @override
  _CheckQRState createState() => _CheckQRState();
}

class _CheckQRState extends State<CheckQR> {
  static var now = new DateTime.now();
  static var formatter = new DateFormat('dd-MM-yyyy');
  String formattedTime = DateFormat('kk:mm:s').format(now);
  String formattedDate = formatter.format(now);
  String checkTime = '';
  String checkTracking = 'Scan QR Code';
  String veryfied = '';
  changeText() {
    setState(() {
      checkTime = formattedTime;
      checkTracking = 'CheckOut';
    });
  }

  // String _counter;
  // Future _checkQRCode() async {
  //   _counter =
  //       await FlutterBarcodeScanner.scanBarcode("#004297", "Cancel", true);
  //   setState(() {
  //     veryfied = _counter;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Curent Time',
                style: TextStyle(
                    fontFamily: 'Lobster', fontSize: 30, color: Colors.black)),
            Text(
              formattedTime,
              textAlign: TextAlign.center,
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Today Time Tracking Start',
                style: TextStyle(
                    fontFamily: 'Lobster', fontSize: 30, color: Colors.black)),
            Text(
              '$checkTime',
              textAlign: TextAlign.center,
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
            Text('$veryfied', style: TextStyle(fontSize: 15.0)),
            Container(
                width: 200,
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
                  leading: Icon(Icons.camera_alt, color: Colors.white),
                  title: Text(
                    '$checkTracking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    //_checkQRCode();
                    changeText();
                  },
                )),
          ],
        ),
      ),
    );
  }
}
