import 'package:flutter/material.dart';
import 'package:oneflut/pages/home_details.dart';
import 'catalogItem.dart';
import 'package:oneflut/models/items.dart';

class CatalogueList extends StatelessWidget {
  const CatalogueList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogueModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogueModel.items[index];
        return InkWell(
            onTap:() => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetails(catalog: catalog))),
            child: CatalogueItem(catalog: catalog));
      },
    );
  }
}
