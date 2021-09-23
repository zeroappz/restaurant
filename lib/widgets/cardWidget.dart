import 'package:flutter/material.dart';
import 'package:restaurant/values/values.dart';

class CardWidget extends StatelessWidget {
  late final String title;
  late final BoxDecoration decoration;

  CardWidget(@required this.title, this.decoration);

  Widget build(BuildContext context) {
    return Container(
        child: Opacity(
      opacity: 0.8,
      child: Container(
        height: Sizes.HEIGHT_40,
        width: Sizes.WIDTH_40,
        decoration: decoration,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: Sizes.SIZE_12),
          ),
        ),
      ),
    ));
  }
}
