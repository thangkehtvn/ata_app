import 'package:flutter/material.dart';
import 'package:et_ata/widgets/Login/logInBtn.dart';
import 'package:et_ata/widgets/Login/passField.dart';
import 'package:et_ata/widgets/Login/userField.dart';
import 'package:et_ata/animation/FadeAnimation.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var backgroundColor = Color(0xFFFFFFFF);
  var secondColor = Color(0xFFf8716b);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginUI(context),
    );
  }

  Widget loginUI(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: FadeAnimation(
                          1,
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/check-ata.png'))),
                          )),
                    ),
                    Positioned(
                      child: FadeAnimation(
                          1.6,
                          Container(
                            margin: EdgeInsets.only(top: 150),
                            child: Center(
                              child: Text("Attendance Tracking",
                                  style: TextStyle(
                                      fontFamily: 'Lobster',
                                      fontSize: 30,
                                      color: Color(0xff1b67b2))),
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    FadeAnimation(
                      1.8,
                      Column(
                        children: <Widget>[
                          UserField(),
                          SizedBox(height: 10),
                          PassField()
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(2, LogInBtn()),
                    SizedBox(
                      height: 70,
                    ),
                    FadeAnimation(
                        1.5,
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Color(0xff1b67b2)),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
