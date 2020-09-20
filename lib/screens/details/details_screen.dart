import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/size_config.dart';

import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }
  AppBar buildAppBar(BuildContext context){
    return AppBar(
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
          onPressed: () {
            Navigator.pop(context);
          }),
      actions: [
        IconButton(icon: SvgPicture.asset("assets/icons/bag.svg"), onPressed: (){}),
        SizedBox(width: SizeConfig.defaultSize,),
      ],
    );
  }

}
