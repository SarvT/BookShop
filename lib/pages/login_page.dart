import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:oneflut/utils/routes.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlue,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'asset/images/Project_69-01.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
              width: 20,
              // child: Text("data"),
            ),
            const Text(
              "Data World!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
              width: 20,
              // child: Text("data"),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter UNAME", labelText: "UNAME"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter pswd", labelText: "PSWD"),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    // print("naah don't!");
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: const Text("SUBMIT"),
                  style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
