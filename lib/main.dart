import 'package:flutter/material.dart';
import 'package:oneflut/pages/cart.dart';
import 'package:oneflut/pages/homepage.dart';
import 'package:oneflut/pages/login_page.dart';
import 'package:oneflut/utils/routes.dart';
import 'package:oneflut/widgets/themes.dart';
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
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),



      // theme: ThemeData(
      //   // brightness: Brightness.dark, 
      // primarySwatch: Colors.deepPurple,
      // appBarTheme: const AppBarTheme(
      //   color: Colors.white,
      //   elevation: 0.0,
      //   iconTheme: IconThemeData(color: Colors.black),
      //   // textTheme: Theme.of(context).textTheme,
      // ),
      // // primaryTextTheme: GoogleFonts.latoTextTheme()
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark
      // ),



    debugShowCheckedModeBanner: false, // hides debug bannner
    initialRoute: MyRoutes.homeRoute,  
      routes: {
        MyRoutes.homeRoute: (context) => const HomeApp(),
        MyRoutes.loginRoute: (context) => const LoginApp(),
        MyRoutes.cartRoute: (context) =>  CartApp(),
      },
    );
  }
}
