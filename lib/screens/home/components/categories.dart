import 'package:flutter/material.dart';
import 'package:furniture/models/Categories.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key key, this.categories}) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
            categories.length,
                (index) => CategoryCard(
              category: categories[index],
            )) /*[
          CategoryCard(category: category),
          CategoryCard(category: category),
        ]*/
        ,
      ),
    );
    ;
  }
}