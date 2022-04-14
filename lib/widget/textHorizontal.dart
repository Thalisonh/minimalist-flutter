import 'package:flutter/material.dart';

class HorizontalText extends StatefulWidget {
  final String _text;

  HorizontalText([this._text = ""]);

  @override
  _HorizontalTextState createState() => _HorizontalTextState();
}

class _HorizontalTextState extends State<HorizontalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(height: 60),
            Center(
              child: Text(
                widget._text,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
