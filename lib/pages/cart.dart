import 'package:flutter/material.dart';
import 'package:oneflut/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartApp extends StatelessWidget {
  // const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: 'Cart'.text.make()),
      ),
      body: Column(
        children: [
          _CartList().px32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  // const CartTotal({super.key});
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          "${_cart.totalPrice}".text.xl4.make(),
          30.widthBox,
          ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.primaryColor)),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: "Feature not supported!".text.make()));
                  },
                  child: "Buy".text.bold.make())
              .pOnly(left: 200)
              .w32(context),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  // const _CartList({super.key});

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          title: Text("${_cart.items[index].name}"),
          subtitle: Text("\$180")),
    );
  }
}

// 6.57