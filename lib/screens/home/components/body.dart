import 'package:flutter/material.dart';
import 'package:furniture/components/title_text.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/models/Categories.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/screens/home/components/product_card.dart';
import 'package:furniture/screens/home/components/recommended_products.dart';
import 'package:furniture/services/fetchCategories.dart';
import 'package:furniture/services/fetchProducts.dart';
import 'package:furniture/size_config.dart';

import 'categories.dart';
import 'category_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
        child: SafeArea(
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Browse by Categories"),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categories(
                    categories: snapshot.data,
                  )
                : Center(child: Image.asset("assets/ripple.gif")),
          ),
          Divider(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(
              title: "Recommended for you",
            ),
          ),
          FutureBuilder(
            future: fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? RecommendedProducts(
                      products: snapshot.data,
                    )
                  : Center(child: Image.asset("assets/ripple.gif"))),
      ],
    ),
        ));
  }
}
