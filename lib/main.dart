import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RestaurantHome(title: 'Dashboard'),
    );
  }
}

// Stateless - immutable (not manipulated or static);
// Button, Icons, Page name
// Stateful - mutable - list(dynamic), wishlist, Database, button(action)
// stless, stful, stanim
class RestaurantHome extends StatelessWidget {
  const RestaurantHome({Key? key, title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Restaurant Demo'),
          centerTitle: true,
          backgroundColor: Colors.red,
          toolbarHeight: 56,
        ),
        body: Container(
            alignment: Alignment.center,
            child: Text('Restaurant Opened now..!')));
  }
}

// Scaffold - View components - Container(), Column(), Row()