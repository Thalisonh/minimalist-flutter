import 'package:flutter/material.dart';

class InkWellStructure extends StatelessWidget {
  final Text _text;
  final Function? _onPressed;

  const InkWellStructure(this._text, [this._onPressed, Key? key])
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(2),
        onTap: _onPressed as void Function()?,
        child: _text,
      ),
    );
  }
}
