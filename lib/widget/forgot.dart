import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  final Function onPressed;

  Forgot(this.onPressed);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 40, left: 190),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(2),
          onTap: widget.onPressed,
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
