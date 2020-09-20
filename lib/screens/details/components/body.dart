import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/screens/details/components/product_description.dart';
import 'package:furniture/screens/details/components/product_info.dart';
import 'package:furniture/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(.6));
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.portrait ? SizeConfig.screenHeight - AppBar().preferredSize.height : SizeConfig.screenWidth,
        child: Stack(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductInfo(
              product: product,
            ),
            Positioned(
              top: defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                press: () {},
              ),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 7.5,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  height: defaultSize * 37.8,
                  width: defaultSize * 36.4,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
