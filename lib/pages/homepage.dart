// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oneflut/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../pages/homeWidgets/CatalogueHeader.dart';
import '../pages/homeWidgets/catalogList.dart';
import 'package:oneflut/models/items.dart';

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
    await Future.delayed(const Duration(milliseconds: 2000));
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
        backgroundColor: MyTheme.lilWhite,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogueHeader(),
                if (CatalogueModel.items.isNotEmpty)
                  const CatalogueList().py16().expand()
                else
                    const CircularProgressIndicator().centered().expand()
              ],
            ),
          ),
        ));
  }
}
// 5.14