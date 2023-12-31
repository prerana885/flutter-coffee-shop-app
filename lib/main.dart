import 'package:coffeeshop/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:coffeeshop/Homepage.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context)=>CoffeeShop(),
    builder: (context,child)=>const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
    );
  }
}


