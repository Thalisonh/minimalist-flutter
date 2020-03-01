import 'package:flutter/material.dart';
import 'package:login_minimalist/widget/buttonNewUser.dart';
import 'package:login_minimalist/widget/newEmail.dart';
import 'package:login_minimalist/widget/newName.dart';
import 'package:login_minimalist/widget/password.dart';
import 'package:login_minimalist/widget/singup.dart';
import 'package:login_minimalist/widget/textNew.dart';
import 'package:login_minimalist/widget/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
