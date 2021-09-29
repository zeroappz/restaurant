import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/animations/scaleRoute.dart';
import 'package:restaurant/values/values.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: AppColorsConst.whiteShade_50,
              elevation: 0.0,
              leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: AppColorsConst.black,
                  )),
              title: Text(
                StringConstant.CART,
                // {$product_name},
                style: TextStyle(color: AppColorsConst.black),
              ),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                    onPressed: () =>
                        Navigator.push(context, ScaleRoute(CartPage())),
                    icon: Icon(
                      FontAwesomeIcons.shoppingBag,
                      color: AppColorsConst.black,
                    ))
              ]),
        ));
  }
}
