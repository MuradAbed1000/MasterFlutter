import 'package:flutter/material.dart';
import 'package:master/models/catalog.dart';
import 'package:master/widgets/drawew.dart';
import 'package:master/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final int day = 30;
    //final String name = "Murad Abed";
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Gatalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          //itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
          // itemBuilder: (context, index) {
          //   return ItemWidget(item: CatalogModel.items[index]);
          // },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
