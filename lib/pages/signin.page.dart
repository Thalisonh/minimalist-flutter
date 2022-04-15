import 'package:flutter/material.dart';

import 'sign.page.dart';
import 'signup.page.dart';

import '../widget/namedInputField.dart';
import '../widget/forgot.dart';
import '../widget/userMode.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SignPage(
      verticalText: "Sign In",
      horizontalText: "A world of possibility in an app",
      beforeSubmit: [
        Email(),
        Password(),
        Forgot(),
      ],
      afterSubmit: [
        UserMode(
          'Your first time?',
          'Sign up',
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignUpPage()),
          ),
        ),
      ],
      submitAction: () {},
    );
  }
}
