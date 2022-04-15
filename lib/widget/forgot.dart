import 'package:flutter/material.dart';

import 'inkWellStructure.dart';

class Forgot extends StatefulWidget {
  final Function? _onPressed;

  Forgot([this._onPressed]);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 40, left: 190),
      child: InkWellStructure(
        Text('Forgot Password?', style: TextStyle(color: Colors.white)),
        widget._onPressed,
      ),
    );
  }
}
