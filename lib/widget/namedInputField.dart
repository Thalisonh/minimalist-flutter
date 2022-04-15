import 'package:flutter/material.dart';

class NamedInputField extends StatefulWidget {
  final String text;
  final bool obscureText;
  final TextInputType keyboard;

  NamedInputField(this.text,
      {this.keyboard = TextInputType.text,
      this.obscureText = false});

  @override
  _NamedInputFieldState createState() => _NamedInputFieldState();
}

class _NamedInputFieldState extends State<NamedInputField> {
  bool isNotSet = true;
  late bool obscureText;

  @override
  Widget build(BuildContext context) {
    if (isNotSet) {
      obscureText = widget.obscureText;
      isNotSet = false;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          keyboardType: widget.keyboard,
          obscureText: obscureText,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            labelText: widget.text,
            labelStyle: TextStyle(color: Colors.white70),
            suffix: widget.obscureText
                ? IconButton(
                    icon: Icon(obscureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined, color: Colors.white70,),
                    onPressed: () => setState(() {
                      obscureText = !obscureText;
                    }),
                  )
                : null,
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
    return NamedInputField(
      "E-mail",
      keyboard: TextInputType.emailAddress,
    );
  }
}

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedInputField(
      "Name",
      keyboard: TextInputType.name,
    );
  }
}

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedInputField(
      "Password",
      keyboard: TextInputType.visiblePassword,
      obscureText: true
    );
  }
}
