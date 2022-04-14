import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  final Function? _onPressed;

  SubmitButton([this._onPressed]);

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 50, left: 200),
      /*
      child: Container(
        alignment: Alignment.bottomRight,

        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.blue[300],
              blurRadius: 10.0,
              spreadRadius: 1.0,
              offset: Offset(2, 2))
        ], borderRadius: BorderRadius.circular(30)),
        */
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        fillColor: Colors.white,
        onPressed: widget._onPressed as void Function()?,
        padding: EdgeInsets.all(10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[Text('OK'), Icon(Icons.arrow_right_alt)]),
        textStyle: TextStyle(
          color: Colors.lightBlueAccent,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        elevation: 5,
      ),
      //),
    );
  }
}
