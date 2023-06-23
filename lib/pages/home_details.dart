// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:oneflut/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:oneflut/models/items.dart';

class HomeDetails extends StatelessWidget {
  // const HomeDetails({super.key});
  final Item catalog;
  const HomeDetails({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: catalog.name.text.make(),
      ),
      bottomNavigationBar: Container(
        // color: MyTheme.lilBlue,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add to cart".text.make(),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(const StadiumBorder())),
            ).wh(150, 50).color(context.canvasColor)
          ],
        ).p32(),
      ),
      // backgroundColor: Colors.white70,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.img))
                  .h32(context),
              Expanded(
                
                  child: VxArc(
                    
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.canvasColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4.make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                      // "Ipsum lorem kasd sit et lorem sit consetetur est ea et, gubergren elitr est stet voluptua accusam consetetur takimata eirmod consetetur, sit vero elitr clita dolore voluptua duo et, at kasd diam dolor tempor rebum et sed. Voluptua ea at nonumy aliquyam duo eirmod sit. Ea kasd eirmod sit tempor."
                      //     .text
                      //     .textStyle(context.captionStyle)
                      //     .make()
                      //     .p16()
                    ],
                  ).py64(),
                ),
              ))
            ],
          )),
    );
  }
}

// 5.47