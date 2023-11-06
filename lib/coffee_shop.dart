import 'package:flutter/material.dart';
import 'coffee.dart';
  class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
 final List<Coffee> _shop=[
   //black coffee
Coffee(
  name: 'Long Black',
    price: "50.20",
    imagePath: "lib/imagescoffee/dcd6aa7a5afe437780610133faeda56b.png",
),
   //lattee
   Coffee(
     name: 'Lattee',
        price: "90.30",
        imagePath: "lib/imagescoffee/latte-in-mug-coffee-a86nXPF-600.jpg",
    ),
   //espresso
   Coffee(
     name: 'Espresso',
     price: "80.90",
     imagePath: "lib/imagescoffee/png-clipart-caffe-d-orzo-espresso-coffee-tea-dolce-gusto-coffee-caffe-d-orzo-espresso-coffee.png",
   ),
   //iced coffee
   Coffee(
     name: 'Iced coffee',
     price: "100.20",
     imagePath: "lib/imagescoffee/png-clipart-starbucks-coffee-glass-of-cold-drink-thumbnail.png",
   ),
   
 ];
  //user cart
  List<Coffee>_userCart=[];

  //get coffee list
 List<Coffee>get coffeeShop=>_shop;

  //get user cart
List<Coffee>get userCart=>_userCart;
  //add item to cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }



}