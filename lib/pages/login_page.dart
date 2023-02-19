import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlue,
      child: Column(
        children: [
          Image.asset(
            'asset/images/Project_69-01.jpg',
            fit: BoxFit.cover,
          ),
          const Text(
            "data world!",
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
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  print("naah don't!");
                },
                child: Text("click"),
              )
            ]),
          )
        ],
      ),
    );
  }
}
