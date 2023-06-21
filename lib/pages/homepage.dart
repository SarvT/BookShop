import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oneflut/models/items.dart';
import 'package:oneflut/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(milliseconds: 2000));
    var itemJson = await rootBundle.loadString("asset/files/items.json");
    final decData = jsonDecode(itemJson);
    var prodData = decData["products"];
    CatalogueModel.items =
        List.from(prodData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
    // print(decData);
  }

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    // home: Scaffold(
    // appBar: AppBar(
    //   iconTheme: const IconThemeData(color: Colors.black),
    //   backgroundColor: Colors.white,
    //   title: const Text(
    //     "Swarn",
    //     style: TextStyle(color: Colors.black),
    //   ),
    // ),
    // body:
    // Padding(
    //     padding: EdgeInsets.all(16),
    //     child: (CatalogueModel.items != null &&
    //             CatalogueModel.items.isNotEmpty)
    //         // ? ListView.builder(
    //         //     itemCount: CatalogueModel.items.length,
    //         //     itemBuilder: (context, index) => ItemWidget(
    //         //       item: CatalogueModel.items[index],
    //         //     ),
    //         //   )
    //         ? GridView.builder(
    //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //                 crossAxisCount: 2,
    //                 mainAxisSpacing: 16,
    //                 crossAxisSpacing: 16),
    //             itemBuilder: (context, index) {
    //               final item = CatalogueModel.items[index];
    //               return Card(
    //                 clipBehavior: Clip.antiAlias,
    //                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    //                 child: GridTile(
    //                   header: Container(
    //                     padding: EdgeInsets.all(12),
    //                     child: Text(item.name,
    //                     style: const TextStyle(
    //                       color: Colors.white
    //                     ),),
    //                     decoration: const BoxDecoration(
    //                       color: Colors.amber,

    //                     ),),
    //                   child: Image.network(item.img),
    //                   footer: Text(item.price.toString()),
    //                   )
    //                 );
    //             },
    //             itemCount: CatalogueModel.items.length,
    //           )
    //         : const Center(
    //             child: CircularProgressIndicator(),
    //           )),
    // drawer: const MyDrawer()

    return Scaffold(
      backgroundColor: Colors.amber,
        body: SafeArea(
      child: Container(
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogueHeader(),
            if (CatalogueModel.items != null && CatalogueModel.items.isNotEmpty)
              CatalogueList().expand()
            else
              Center(
                child: CircularProgressIndicator(),
              )
          ],
        ),
      ),
    ));
  }
}

class CatalogueHeader extends StatelessWidget {
  // const CatalogueHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Mr.Store".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}

class CatalogueList extends StatelessWidget {
  const CatalogueList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogueModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogueModel.items[index];
        return CatalogueItem(catalog: catalog);
      },
    );
  }
}

class CatalogueItem extends StatelessWidget {
  final Item catalog;
  CatalogueItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
// final Item catalog = catalog;

  @override
  Widget build(BuildContext context) {
    // var catalog;
    return VxBox(
        child: Row(
      children: [Image.network(catalog.img).box.rounded.p16.make().p16().w40(context)],
    ),
    ).white.roundedLg.square(150).make().py16();
  }
}

// 5.14