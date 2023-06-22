
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catImage.dart';
import 'package:oneflut/models/items.dart';


class CatalogueItem extends StatelessWidget {
  final Item catalog;
  const CatalogueItem({Key? key, required this.catalog})
      : super(key: key);
// final Item catalog = catalog;

  @override
  Widget build(BuildContext context) {
    // var catalog;
    return VxBox(
      child: Row(
        children: [
          Hero(
            child: CatImage(img: catalog.img),
            tag: Key(catalog.id.toString()),
            ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: "Buy".text.make(),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const StadiumBorder()
                      )
                    ),
                    )
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).white.roundedLg.square(150).make().py16();
  }
}