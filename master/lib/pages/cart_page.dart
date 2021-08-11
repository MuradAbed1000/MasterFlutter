import 'package:flutter/material.dart';
import 'package:master/models/cart.dart';
import 'package:master/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios_new),
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [_CardList().p32().expand(), Divider(), _cartTotal()],
      ),
    );
  }
}

class _cartTotal extends StatelessWidget {
  final _card = CartModel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_card.totalprice}".text.xl5.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: "Buying not supported".text.make(),
                    ));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor)),
                  child: "Buy".text.white.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _CardList extends StatefulWidget {
  const _CardList({Key? key}) : super(key: key);

  @override
  __CardListState createState() => __CardListState();
}

class __CardListState extends State<_CardList> {
  final _card = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: _card.items![index].name.text.make(),
      ),
      itemCount: _card.items?.length,
    );
  }
}
