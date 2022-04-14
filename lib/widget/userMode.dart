import 'package:flutter/material.dart';

import 'inkWellStructure.dart';

class UserMode extends StatelessWidget {
  final String _infoText;
  final String _inkWellText;
  final Function? _onPressed;

  UserMode([this._infoText = "", this._inkWellText = "", this._onPressed]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Row(
        children: <Widget>[
          Text(
            this._infoText,
            style: TextStyle(fontSize: 12, color: Colors.white70),
          ),
          Padding(padding: EdgeInsets.only(left: 5)),
          InkWellStructure(
            Text(
              this._inkWellText,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            _onPressed,
          ),
        ],
      ),
    );
  }
}
