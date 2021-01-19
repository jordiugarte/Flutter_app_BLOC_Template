import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_template/src/bloc/product_bloc.dart';

class Provider extends InheritedWidget {
  static Provider _instacia;

  final _productBloc = ProductBloc();

  factory Provider({Key key, Widget child}) {
    if (_instacia == null) {
      _instacia = new Provider._internal(key: key, child: child);
    }

    return _instacia;
  }

  Provider._internal({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static ProductBloc productBloc(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>()._productBloc;
  }
}
