import 'package:flutter/material.dart';

class UserMode extends StatelessWidget {
  final String infoText;
  final String onTapText;
  final Function onTap;

  UserMode(this.infoText, this.onTapText, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Row(
        children: <Widget>[
          Text(
            this.infoText,
            style: TextStyle(fontSize: 12, color: Colors.white70),
          ),
          Padding(padding: EdgeInsets.only(left: 5)),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(2),
              onTap: this.onTap,
              child: Text(
                this.onTapText,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
