import 'package:flutter/material.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/screens/home/components/product_card.dart';

import '../../../size_config.dart';

class RecommendedProducts extends StatelessWidget {
  final List<Product> products;

  const RecommendedProducts({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: SizeConfig.orientation == Orientation.portrait ? 2 : 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.693),
          itemBuilder: (context, index) => ProductCard(
            product: products[index],
            press: () {},
          )),
    );
  }
}
