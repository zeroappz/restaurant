import 'package:flutter/material.dart';
// included in almost all the pages - Material Theme UI
import 'package:restaurant/auth/signin.dart';
import 'package:restaurant/auth/signup.dart';
import 'package:restaurant/pages/ProductDetails.dart';
import 'package:restaurant/pages/basicFormHandlings.dart';
import 'package:restaurant/pages/cartPage.dart';
import 'package:restaurant/pages/categoryList.dart';
import 'package:restaurant/pages/dashboard.dart';
// import 'package:restaurant/pages/localApiDataAccess.dart';
import 'package:restaurant/pages/productsList.dart';
import 'package:restaurant/pages/profile.dart';
//import 'package:restaurant/pages/welcome.dart';
import 'package:restaurant/pages/checkout.dart';
// welcome, sigin, signup, resetpage, home

// Accessing API data
// import 'dart:async';
// import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: FormValidation(),
    debugShowCheckedModeBanner:
        false, //show or hide the debug banner at the top right corner
    routes: {
      'signin': (context) => SignInPage(),
      'signup': (context) => SignUpPage(),
      'dashboard': (context) => RestaurantHomePage(),
      'category': (context) => CategoryListPage(),
      'products': (context) => ProductListPage(),
      'products_detail': (context) => ProductDetailsPage(),
      'cart': (context) => CartPage(),
      'address': (context) => AddressPage(),
      'profile': (context) => ProfilePage(),
    },
  ));
}

// BuildContext context


// login page, register - others

// class MyApp extends StatelessWidget {
//   This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Restaurant',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: RestaurantHome(title: 'Dashboard'),
//     );
//   }
// }

// Stateless - immutable (not manipulated or static);
// Button, Icons, Page name
// Stateful - mutable - list(dynamic), wishlist, Database, button(action)
// stless, stful, stanim
// class RestaurantHome extends StatelessWidget {
//   const RestaurantHome({Key? key, title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.blueAccent,
//         appBar: AppBar(
//           title: Text('Restaurant Demo'),
//           centerTitle: true,
//           backgroundColor: Colors.red,
//           toolbarHeight: 56,
//         ),
//         body: Container(
//             alignment: Alignment.center,
//             child: Text('Restaurant Opened now..!')));
//   }
// }

// Scaffold - View components - Container(), Column(), Row()