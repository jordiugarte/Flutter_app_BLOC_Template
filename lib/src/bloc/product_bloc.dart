import 'package:flutter_app_bloc_template/src/models/base.dart';
import 'package:flutter_app_bloc_template/src/models/product.dart';
import 'package:flutter_app_bloc_template/src/provider/product.dart';
import 'package:rxdart/rxdart.dart';

class ProductBloc {
  final _productLoadingController = BehaviorSubject<bool>();
  final _productController = BehaviorSubject<List<Product>>();
  final _productCart = BehaviorSubject<List<Product>>();

  final _productProvider = ProductProvider();

  Stream<bool> get productLoadingStream => _productLoadingController.stream;
  Stream<List<Product>> get productStream => _productController.stream;

  Future<Base<List<Product>>> getAllProducts() async {
    _productLoadingController.sink.add(true);
    final _response = await _productProvider.getAllProducts();
    _productController.sink.add(_response.getData);
    _productLoadingController.sink.add(false);
    return _response;
  }
}
