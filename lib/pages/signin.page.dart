import 'package:flutter/material.dart';

import 'sign.page.dart';
import 'signup.page.dart';

import '../widget/namedInputField.dart';
import '../widget/forgot.dart';
import '../widget/userMode.dart';

class SignInPage extends StatefulWidget {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  SignInPage({Key? key}) : super(key: key);

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
        Email(controller: widget.emailController),
        Password(controller: widget.passwordController),
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
      submitAction: () {
        // use "widget.emailController.text" and "widget.passwordController.text"
      },
    );
  }
}
