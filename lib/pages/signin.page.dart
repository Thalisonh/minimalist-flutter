import 'package:flutter/material.dart';
import 'package:login_minimalist/widget/submitButton.dart';
import 'package:login_minimalist/widget/userSignInUp.dart';
import 'package:login_minimalist/widget/forgot.dart';
import 'package:login_minimalist/widget/email.dart';
import 'package:login_minimalist/widget/password.dart';
import 'package:login_minimalist/widget/textHorizontal.dart';
import 'package:login_minimalist/widget/textVertical.dart';

import 'signup.page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                  VerticalText('Sign in'),
                  HorizontalText('A world of possibility in an app'),
                ]),
                Email(),
                PasswordInput(),
                Forgot(() {}),
                SubmitButton(() {}),
                UserSignInUp(
                  'Your first time?',
                  'Sign up',
                  () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignUpPage())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
