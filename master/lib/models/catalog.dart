
class CatalogModel{
  static final items = [
  Item(
    id: 1,
    name: "murad",
    desc: "kasuhdygfyf6f6f6f6",
    color: "white",
    price: 30.0,
    image: "https://www.nsowo.com/wp-content/uploads/2021/06/%D9%85%D8%B3%D9%84%D8%B3%D9%84-%D8%B9%D8%B2%D9%8A%D8%B2.jpg"
     
  )
];

}

class Item {
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;
  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

