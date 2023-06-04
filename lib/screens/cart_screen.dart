import 'package:flutter/material.dart';
import '../api/fakestore_api.dart';
import '../models/cart.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Cart> cartItems = [];

  @override
  void initState() {
    super.initState();
    fetchCartItems();
  }

  Future<void> fetchCartItems() async {
    List<Cart> fetchedCartItems = await FakeStoreApi.getCarts();
    setState(() {
      cartItems = fetchedCartItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].productName),
            subtitle: Text('\$${cartItems[index].price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // nambahin logic untuk remove dari cart
              },
            ),
          );
        },
      ),
    );
  }
}
