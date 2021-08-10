import 'package:flutter/material.dart';
import 'package:master/pages/cart_page.dart';
import 'package:master/pages/login_page.dart';
import 'package:master/pages/utils/routes.dart';
import 'package:master/widgets/themes.dart';
import './pages/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute:(context)=>LoginPage(),
        MyRoutes.CartRoute:(context)=>CartPage(),
      },
    );
  }


}
