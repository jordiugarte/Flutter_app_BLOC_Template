import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product(
      {String id,
      String code,
      String idGroup,
      String dependency,
      String details,
      String price,
      String image,
      String idCP,
      String active})
      : _id = id,
        _code = code,
        _idGroup = idGroup,
        _details = details,
        _price = price,
        _image = image,
        _idCP = idCP,
        _active = active;

  String _id;
  String _idGroup;
  String _code;
  String _dependency;
  String _details;
  String _price;
  String _image;
  String _idCP;
  String _active;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["ID"],
        idGroup: json["IdCartilla"],
        code: json["Codigo"],
        dependency: json["Dependencia"],
        details: json["Detalle"],
        price: json["Precio"],
        image: json["Imagen"],
        idCP: json["IdCP"],
        active: json["Activo"],
      );

  Map<String, dynamic> toJson() => {
        "ID": _id,
        "Codigo": _code,
        "IdCartilla": _idGroup,
        "Dependencia": _dependency,
        "Detalle": _details,
        "Precio": _price,
        "Imagen": _image,
        "IdCP": _idCP,
        "Activo": _active,
      };

  String get active => _active;

  set active(String value) {
    _active = value;
  }

  String get idCP => _idCP;

  set idCP(String value) {
    _idCP = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get price => _price;

  set price(String value) {
    _price = value;
  }

  String get details => _details;

  set details(String value) {
    _details = value;
  }

  String get dependency => _dependency;

  set dependency(String value) {
    _dependency = value;
  }

  String get code => _code;

  set code(String value) {
    _code = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get idGroup => _idGroup;

  set idGroup(String value) {
    _idGroup = value;
  }


}
