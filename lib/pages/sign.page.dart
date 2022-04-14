import 'package:flutter/material.dart';

import '../widget/textHorizontal.dart';
import '../widget/textVertical.dart';
import '../widget/submitButton.dart';

class SignPage extends StatefulWidget {
  final List<Widget> _items = [];

  SignPage(
      {String verticalText = "",
      String horizontalText = "",
      Function? submitAction,
      List<Widget>? beforeSubmit,
      List<Widget>? afterSubmit}) {
    _items.add(Row(children: [
      VerticalText(verticalText),
      HorizontalText(horizontalText)
    ]));
    _items.addAll(beforeSubmit ?? []);
    _items.add(SubmitButton(submitAction));
    _items.addAll(afterSubmit ?? []);
  }

  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(children: widget._items),
          ],
        ),
      ),
    );
  }
}
