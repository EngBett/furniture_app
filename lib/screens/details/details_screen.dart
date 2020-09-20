import 'package:flutter/material.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/size_config.dart';

class DetailScreen extends StatelessWidget {

  final Product product;

  const DetailScreen({Key key, this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container();
  }
}
