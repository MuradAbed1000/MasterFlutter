import 'package:flutter/material.dart';
import 'package:master/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
class CatalogHeader extends StatelessWidget {
  const CatalogHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Catalog App".text.xl5.bold.color(MyThemes.darkBluishColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}