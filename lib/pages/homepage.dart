import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oneflut/models/items.dart';
import 'package:oneflut/widgets/drawer.dart';
import 'package:oneflut/widgets/item_widget.dart';

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            "Swarn",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: (CatalogueModel.items != null &&
                    CatalogueModel.items.isNotEmpty)
                ? ListView.builder(
                    itemCount: CatalogueModel.items.length,
                    itemBuilder: (context, index) => ItemWidget(
                      item: CatalogueModel.items[index],
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  )),
        drawer: const MyDrawer(),
      ),
    );
  }
}
