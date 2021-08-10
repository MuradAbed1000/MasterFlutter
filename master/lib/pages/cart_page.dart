import 'package:flutter/material.dart';
import 'package:master/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios_new),
        title: "Cart".text.make(),
        ),
    );
  }
}