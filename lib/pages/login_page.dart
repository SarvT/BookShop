import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:oneflut/utils/routes.dart';

// underscore before a name is private in flutter

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

String name = "";
bool changeBtn = false;

class _LoginAppState extends State<LoginApp> {
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
            Text(
              "Welcome $name",
              style: const TextStyle(
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
                  onChanged: (value) => {
                    name = value,
                    setState(() {}),
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter pswd", labelText: "PSWD"),
                ),
                const SizedBox(
                  height: 40,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeBtn = true;
                    });
                    await Future.delayed(const Duration(milliseconds: 500));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: changeBtn ? 50 : 130,
                    height: 40,
                    alignment: Alignment.center,
                    child: changeBtn
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        // shape: changeBtn? BoxShape.circle:BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeBtn ? 50 : 6)),
                  ),
                )

                // ElevatedButton(
                //   onPressed: () {
                //     // print("naah don't!");
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: const Text("SUBMIT"),
                //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                // )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
