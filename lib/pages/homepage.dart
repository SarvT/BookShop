import 'package:flutter/material.dart';
import 'package:oneflut/widgets/drawer.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text("Swarn",
          style: TextStyle(
            color: Colors.black
          ),
          ),
        ),
        body: const Center(
          child: Text("Welcome Here ! your bday is on fav number is "),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
