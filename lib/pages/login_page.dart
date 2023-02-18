import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text("LoginPage", 
        style: TextStyle(
          fontSize: 26,
          color: Colors.amberAccent
        ),
        textScaleFactor: 2.0,
        )
        ),
    );
  }
}