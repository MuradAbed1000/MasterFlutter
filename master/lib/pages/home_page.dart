import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:master/models/catalog.dart';
import 'package:master/widgets/drawew.dart';
import 'package:master/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int day = 30;
  final String name = "Murad Abed";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogjson = await rootBundle.loadString("assets/file/catalog.json");
    var decodeData = jsonDecode(catalogjson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gatalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                ),
                itemBuilder: (context, indext) {
                  final item = CatalogModel.items![indext];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: GridTile(
                        header: Container(
                          child: Text(item.name.toString(),style: TextStyle(color: Colors.white),),
                          padding:const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                        ),
                        child: Image.network(item.image.toString()),
                        footer: Container(
                          child: Text(item.price.toString(),style: TextStyle(color: Colors.white),),
                          padding:const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ));
                },
                itemCount: CatalogModel.items!.length,
              )
            // ListView.builder(
            //     itemCount: CatalogModel.items!.length,
            //     itemBuilder: (context, index) =>
            //         ItemWidget(item: CatalogModel.items![index]),
            //   )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
