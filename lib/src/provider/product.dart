import 'dart:convert';
import 'package:flutter_app_bloc_template/src/models/base.dart';
import 'package:flutter_app_bloc_template/src/models/product.dart';
import 'package:flutter_app_bloc_template/src/utils/constants.dart';
import 'package:http/http.dart' as http;

class ProductProvider {
  Future<Base<List<Product>>> getAllProducts() async {
    final resp = await http.get(GET_PRODUCTS);
    List<Product> products = new List<Product>();
    Map<String, dynamic> _decodedResp = json.decode(resp.body);
    if (resp.statusCode == 200) {
      List decodedResp = json.decode(resp.body) as List;
      for (int i = 0; i < decodedResp.length; i++) {
        Product product = Product.fromJson(decodedResp[i]);
        products.add(product);
      }
      return Base<List<Product>>.success(products);
    } else {
      return Base<List<Product>>.error(_decodedResp['result']['error_msg'], _decodedResp['result']['error_id']);
    }
  }

  Future<Base<Product>> getProduct(int id) async {
    final resp = await http.get(GET_PRODUCTS + "?id=$id");
    Map<String, dynamic> _decodedResp = json.decode(resp.body);
    if (resp.statusCode == 200) {
      return Base<Product>.success(Product.fromJson(_decodedResp[0]));
    } else {
      return Base<Product>.error(_decodedResp['result']['error_msg'],  _decodedResp['result']['error_id']);
    }
  }
}