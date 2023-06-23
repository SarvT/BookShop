import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:oneflut/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

// underscore before a name is private in flutter

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  String name = "";
  bool changeBtn = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext buildContext) async {
    if (_formKey.currentState!.validate()) {
      
    setState(() {
      changeBtn = true;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeBtn = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                        hintText: "Enter UNAME", 
                        labelText: "UNAME"
                        ),
                        validator: (value) {
                      if (value!.isEmpty) {
                        return "UNAME can't be empty";
                      }
                      // return null;
                    },
                    onChanged: (value) => {
                      name = value,
                      setState(() {}),
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter pswd", labelText: "PSWD"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "pswd can't be empty";
                      }
                      else if (value.length < 8) {
                        return "pswd can't be less than 8 chars";
                      }
                        },
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  Material(
                    color: context.canvasColor,
                    borderRadius: BorderRadius.circular(changeBtn ? 50 : 6),
                    child: InkWell(
                      onTap: () => moveToHome(context),
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
                            : "Submit".text.make(),
                        // decoration: BoxDecoration(
                        //     color: Colors.deepPurpleAccent,
                        // )
                        // shape: changeBtn? BoxShape.circle:BoxShape.rectangle,
                      ),
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
      ),
    );
  }
}
