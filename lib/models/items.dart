import 'package:flutter/cupertino.dart';

class CatalogueModel {
  static List<Item> items = [
    // Item(
    //     id: 1,
    //     name: "iPhone 11",
    //     desc: "description of iPhone 11...",
    //     price: 999,
    //     color: "#33505a",
    //     img:
    //         "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.skymetweather.com%2Fgallery%2Ftoplists%2FTop-Not-to-miss-food-items-in-Monsoon%2F&psig=AOvVaw10cpSGWAwlHAw4dsqfTg0b&ust=1677773711586000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCLj3666Qu_0CFQAAAAAdAAAAABAE")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.img});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        img: map["img"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "img": img
      };
}

// final products = [Item(
//   "326376",
//   "Walverito",
//   "a big creamy sausage walta",
//   450,
//   "#33505a",
//   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.skymetweather.com%2Fgallery%2Ftoplists%2FTop-Not-to-miss-food-items-in-Monsoon%2F&psig=AOvVaw10cpSGWAwlHAw4dsqfTg0b&ust=1677773711586000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCLj3666Qu_0CFQAAAAAdAAAAABAE"
//   )];
