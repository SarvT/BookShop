import 'package:flutter/cupertino.dart';

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item(this.id, this.name, this.desc, this.price, this.color, this.img);
}

final products = [Item(
  "326376", 
  "Walverito", 
  "a big creamy sausage walta", 
  450, 
  "#33505a", 
  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.skymetweather.com%2Fgallery%2Ftoplists%2FTop-Not-to-miss-food-items-in-Monsoon%2F&psig=AOvVaw10cpSGWAwlHAw4dsqfTg0b&ust=1677773711586000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCLj3666Qu_0CFQAAAAAdAAAAABAE")];
