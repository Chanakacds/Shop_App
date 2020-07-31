import 'package:flutter/material.dart';

class Cart_product extends StatefulWidget {
  @override
  _Cart_productState createState() => _Cart_productState();
}

class _Cart_productState extends State<Cart_product> {
  var product_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "Size": "M",
      "color": "Blue",
      "price": 85,
    },
    {
      "name": "Red drss",
      "picture": "images/products/dress1.jpeg",
      "Size": "M",
      "color": "Red",
      "price": 85,
      "qat": "234"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: product_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_product_details_color: product_on_the_cart[index]["color"],
          cart_product_details_name: product_on_the_cart[index]["name"],
          cart_product_details_picture: product_on_the_cart[index]["picture"],
          cart_product_details_qty: product_on_the_cart[index]["qat"],
          cart_product_details_size: product_on_the_cart[index]["Size"],
          cartt_product_details_new_price: product_on_the_cart[index]["price"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_details_name;
  final cartt_product_details_new_price;
  final cart_product_details_size;
  final cart_product_details_picture;
  final cart_product_details_color;
  final cart_product_details_qty;

  Single_cart_product({
    this.cart_product_details_color,
    this.cart_product_details_name,
    this.cart_product_details_picture,
    this.cart_product_details_qty,
    this.cart_product_details_size,
    this.cartt_product_details_new_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
  
      child: ListTile(
         
        // ======Leading Section======
        leading: Image.asset(
          cart_product_details_picture,
          width: 80.0,
          height: 100,
        ),
        // ======Titel Section======
        title: Text(cart_product_details_name),
        // ====== Subtitle Section
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size"),
                ),

                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                    cart_product_details_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                // This section of the product color=====
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 4.0, 4.0, 4.0),
                  child: Text("Color"),
                ),

                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(cart_product_details_color,
                      style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cartt_product_details_new_price}",
                style: TextStyle(fontSize: 19.0),
              ),
            ),
          ],
        ),

        trailing: new Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
            Text("1"),
            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
