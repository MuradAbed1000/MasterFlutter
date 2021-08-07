import 'package:flutter/material.dart';
import 'package:master/widgets/drawew.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int day = 30;
    final String name = "Murad Abed";
    return Scaffold(
      appBar: AppBar(
        title: Text("Gatalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $day days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
