import 'package:coffeeshop/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Coffee_tile.dart';
import 'coffee.dart';
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item
  void removeFromCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).removeItemFromCart(coffee);
  }
  //pay button
  void payNow(){

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context,value,child)=>SafeArea(
      child:Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          //heading
          Text(
            'Your cart',
            style: TextStyle(fontSize: 20.0),
          ),
          //list of cart
          Expanded(child: ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder: (context,index){
            //get individual coffee
           Coffee eachCoffee=value.userCart[index];
        //return the coffee tile
            return CoffeeTile(coffee: eachCoffee,
              onPressed:() =>removeFromCart(eachCoffee),
              icon: Icon(Icons.delete),
            );
          }
          ),
          ),
           //pay button
          GestureDetector(
            onTap: payNow,
            child: Container(
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.brown,
              borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  "Pay Now",
                  style: TextStyle(color: Colors.white70),),
              ),
            ),
          )
        ],
      ),
    ),
      )
    );
  }
}