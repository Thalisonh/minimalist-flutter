import 'package:flutter/material.dart';

class NamedInputField extends StatefulWidget {
  final String text;
  final bool obscureText;
  final TextInputType keyboard;
  final TextEditingController? controller;

  NamedInputField(this.text,
      {this.keyboard = TextInputType.text,
      this.controller,
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
          controller: widget.controller,
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
                    icon: Icon(
                      obscureText
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                      color: Colors.white70,
                    ),
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
  final TextEditingController? controller;

  const Email({this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedInputField(
      "E-mail",
      controller: controller,
      keyboard: TextInputType.emailAddress,
    );
  }
}

class Name extends StatelessWidget {
  final TextEditingController? controller;

  const Name({this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedInputField(
      "Name",
      keyboard: TextInputType.name,
      controller: controller,
    );
  }
}

class Password extends StatelessWidget {
  final TextEditingController? controller;

  const Password({this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NamedInputField(
      "Password",
      keyboard: TextInputType.visiblePassword,
      controller: controller,
      obscureText: true,
    );
  }
}
