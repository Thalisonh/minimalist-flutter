import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            labelText: 'E-mail',
            labelStyle: TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
