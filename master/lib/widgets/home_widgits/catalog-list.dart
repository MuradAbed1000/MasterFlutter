import 'package:flutter/material.dart';
import 'package:master/models/catalog.dart';
import 'package:master/pages/home-details-page.dart';
import 'catalog-item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        //final catalog = CatalogModel.items![index];
        return InkWell(
          child: CatalogItem(
            //catalog: CatalogModel.getById(2),
           catalog: catalog,
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(catalog: catalog),
            ),
          ),
        );
      },
    );
  }
}
