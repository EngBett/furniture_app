import 'package:flutter/material.dart';
import 'package:furniture/components/title_text.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/size_config.dart';

class ProductCard extends StatelessWidget {

  final Product product;
  final Function press;

  const ProductCard({Key key, this.product,this.press}):super(key:key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return GestureDetector(

      onTap: press,
      child: Container(
        width: defaultSize * 14.5,
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(30)),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif", image: product.image,fit: BoxFit.cover,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize),
                child: TitleText(title: product.title,),
              ),

              SizedBox(height: defaultSize / 2,),

              Text("\$${product.price}"),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}