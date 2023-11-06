import 'package:flutter/material.dart';
import 'Cart_page.dart';
import 'Shop_page.dart';
import 'bottom_nav_bar.dart';
import 'const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate bottom bar
  int _selectedIndex=0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  //pages
  final List<Widget>_pages=[
    //shop pages
    ShopPage(),

    CartPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange:(index) =>navigateBottomBar(index),
      ),
     body: _pages[_selectedIndex],
    );
  }
}

