import 'package:flutter/material.dart';


class HomeApp extends StatelessWidget {
  const HomeApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SimpleApp"),
        ),
        body: const Center(
          child: Text(
              "Welcome Here ! your bday is on fav number is "),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}