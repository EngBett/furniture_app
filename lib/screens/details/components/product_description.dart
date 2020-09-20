import 'package:flutter/material.dart';
import 'package:furniture/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  final Product product;
  final Function press;

  const ProductDescription({Key key, this.product, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      constraints: BoxConstraints(minHeight: defaultSize * 44),
      padding: EdgeInsets.only(
          top: defaultSize * 9, left: defaultSize * 2, right: defaultSize * 2),
      //height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(defaultSize * 1.2),
            topRight: Radius.circular(defaultSize * 1.2),
          )),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.subTitle,
              style: TextStyle(
                  fontSize: defaultSize * 1.8, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: defaultSize * 3,
            ),
            Text(
              product.description,
              style: TextStyle(color: kTextColor.withOpacity(0.7), height: 1.5),
            ),
            SizedBox(
              height: defaultSize * 3,
            ),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                  padding: EdgeInsets.all(defaultSize * 1.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: press,
                  color: kPrimaryColor,
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: defaultSize * 1.6,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}