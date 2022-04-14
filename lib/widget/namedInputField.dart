import 'package:flutter/material.dart';

class NamedInputField extends StatefulWidget {
  final String _text;
  final bool _obscureText;
  NamedInputField([this._text = "", this._obscureText = false]);

  @override
  _NamedInputFieldState createState() => _NamedInputFieldState();
}

class _NamedInputFieldState extends State<NamedInputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          obscureText: widget._obscureText,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            labelText: widget._text,
            labelStyle: TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}


class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedInputField("E-mail");
  }
}

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedInputField("Name");
  }
}

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedInputField("Password", true);
  }
}
