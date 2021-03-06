import 'package:flutter/material.dart';
import 'package:master/pages/login_page.dart';
import './pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,//change App bar color
        // brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
         primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
         brightness: Brightness.dark,
        //primarySwatch: Colors.red,//not work in darkchange App bar color
      ),
      initialRoute: "/login",
      routes: {
        "/":(context)=>LoginPage(),
        "/home":(context)=>HomePage(),
        "/login":(context)=>LoginPage(),
      },
    );
  }
}
