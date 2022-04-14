
import 'package:flutter/material.dart';

import 'sign.page.dart';
import 'signin.page.dart';

import '../widget/namedInputField.dart';
import '../widget/userMode.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SignPage(
      verticalText: "Sign Up",
      horizontalText: "We can start something new",
      beforeSubmit: [
        Name(),
        Email(),
        Password(),
      ],
      afterSubmit: [
        UserMode(
          'Have we met before?',
          'Sign in',
              () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignInPage()),
          ),
        ),
      ],
      submitAction: () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => SignInPage())),
    );
  }
}
