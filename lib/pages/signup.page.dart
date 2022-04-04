import 'package:flutter/material.dart';

import '../widget/submitButton.dart';
import '../widget/email.dart';
import '../widget/signUpName.dart';
import '../widget/password.dart';
import '../widget/textVertical.dart';
import '../widget/textHorizontal.dart';
import '../widget/userSignInUp.dart';

import 'signin.page.dart';

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
                SubmitButton(() => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SignInPage()))),
                UserSignInUp(
                  'Have we met before?',
                  'Sign in',
                  () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignInPage())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
