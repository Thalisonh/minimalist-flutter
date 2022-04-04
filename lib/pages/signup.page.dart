import 'package:flutter/material.dart';
import 'package:login_minimalist/widget/submitButton.dart';
import 'package:login_minimalist/widget/email.dart';
import 'package:login_minimalist/widget/signUpName.dart';
import 'package:login_minimalist/widget/password.dart';
import 'package:login_minimalist/widget/textVertical.dart';
import 'package:login_minimalist/widget/textHorizontal.dart';
import 'package:login_minimalist/widget/userSignIn.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText('Sign up'),
                  HorizontalText('We can start something new'),
                ]),
                SignUpName(),
                Email(),
                PasswordInput(),
                SubmitButton(() {
                  Navigator.pop(context);
                  print("test");
                }),
                UserSignIn(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
