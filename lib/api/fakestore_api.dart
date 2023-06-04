import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/cart.dart';
import '../models/product.dart';

class FakeStoreApi {
  static Future<List<Product>> getProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return List<Product>.from(jsonData.map((data) => Product.fromJson(data)));
    } else {
      throw Exception('Failed to fetch products');
    }
  }

  static Future<List<Cart>> getCarts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/carts'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return List<Cart>.from(jsonData.map((data) => Cart.fromJson(data)));
    } else {
      throw Exception('Failed to fetch carts');
    }
  }

  static Future<Cart> getCart(int cartId) async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/carts/$cartId'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return Cart.fromJson(jsonData);
    } else {
      throw Exception('Failed to fetch cart');
    }
  }

  // Implement other API methods for adding, updating, and deleting products/carts
}
