import 'package:flutter/material.dart';
import 'package:master/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item? item;

  const ItemWidget({Key? key, @required this.item}) :assert(item!= null), super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      //shape: StadiumBorder(),
      child: ListTile(
        onTap: (){
          print("${item!.name} pressed");
        },
        leading: Image.network(item!.image.toString()),
        title: Text(item!.name.toString()),
        subtitle: Text(item!.desc.toString()),
        trailing: Text("\$${item!.price}",textScaleFactor: 1.5,style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,),
      ),
    );
  }
}
