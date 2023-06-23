import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:oneflut/widgets/themes.dart';

class CatalogueHeader extends StatelessWidget {
  const CatalogueHeader({Key? key}) : super(key: key);

  // const CatalogueHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Mr.Store".text.xl5.bold.make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}