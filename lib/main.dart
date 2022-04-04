import 'package:flutter/material.dart';
import 'package:login_minimalist/pages/signin.page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minimalist Flutter Sign In/Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

