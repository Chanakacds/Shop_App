import 'package:flutter/material.dart';
import 'package:shop_app/componets/cart_product.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
    body: Cart_product(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("\$230"),

              )),
              Expanded(child: MaterialButton(onPressed: (){},
              child: Text("Check out",style: TextStyle(
                color: Colors.white),
                ),
                color: Colors.red,)
                )
              ],
        ),
      ),
    );
  }
}
