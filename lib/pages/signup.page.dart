import 'package:flutter/material.dart';

import 'sign.page.dart';
import 'signin.page.dart';

import '../widget/namedInputField.dart';
import '../widget/userMode.dart';

class SignUpPage extends StatefulWidget {
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  SignUpPage({Key? key}) : super(key: key);

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
        Name(controller: widget.nameController),
        Email(controller: widget.emailController),
        Password(controller: widget.passwordController),
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
      submitAction: () {
        // use "widget.nameController.text", "widget.emailController.text" and "widget.passwordController.text"
        return Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignInPage()));
      },
    );
  }
}
