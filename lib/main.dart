import 'package:flutter/material.dart';
import 'package:oneflut/pages/homepage.dart';
import 'package:oneflut/pages/login_page.dart';
import 'package:oneflut/utils/routes.dart';
// import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int bday = 03;
    // double a = 30;
    // String name = 'Usera';
    // bool dat = true;

    // num hi = 645;

    // var cust = 'sas';

    // const hehe = "hehehe";
    // final fhehe = "freaky hehehe";

    // // setAge({int age = 100}) {}

    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(brightness: Brightness.dark, 
      primarySwatch: Colors.lime,
      
      // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
    debugShowCheckedModeBanner: false, // hides debug bannner
    initialRoute: "/login",  
      routes: {
        MyRoutes.homeRoute: (context) => const HomeApp(),
        MyRoutes.loginRoute: (context) => const LoginApp(),
      },
    );
  }
}
