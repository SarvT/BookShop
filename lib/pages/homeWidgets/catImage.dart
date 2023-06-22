import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatImage extends StatelessWidget {
  // const CatImage({super.key});
  final String img;
  const CatImage({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(img).box.rounded.p16.make().p16().w40(context);
  }
}