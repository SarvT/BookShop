import 'package:flutter/material.dart';
import 'package:oneflut/models/items.dart';

class ItemWidget extends StatelessWidget {
  // const ItemWidget({super.key});

  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),
      // elevation: 0.5,
      child: ListTile(
        onTap: () {
          // print('item ${item.name} is pressed.');
        },
        leading: Image.network(
          item.img,
          errorBuilder:
              (BuildContext context, Object exception, StackTrace? stackTrace) {
            return Text('Your error widget...');
          },
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
