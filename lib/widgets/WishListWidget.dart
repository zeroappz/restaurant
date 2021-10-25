import 'package:flutter/material.dart';

class WishListWidget extends StatefulWidget {
  const WishListWidget({Key? key}) : super(key: key);

  @override
  _WishListWidgetState createState() => _WishListWidgetState();
}

class _WishListWidgetState extends State<WishListWidget> {
  bool isTouched = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // isTouched = true; // set true value always
          isTouched = !isTouched;
        });
      },
      child: Icon(isTouched ? Icons.favorite : Icons.favorite_border,
          size: 72.0, color: isTouched ? Colors.redAccent : Colors.blueAccent),
    );
  }
}
