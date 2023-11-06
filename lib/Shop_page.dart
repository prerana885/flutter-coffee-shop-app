import 'package:coffeeshop/coffee.dart';
import 'package:coffeeshop/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Coffee_tile.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}
class _ShopPageState extends State<ShopPage> {
  //add to cart
  void addToCart(Coffee coffee){

    //add to cart
   Provider.of<CoffeeShop>(context,listen:false ).addItemToCart(coffee);
  //let the user know added or not
    showDialog(context: context, builder: (context)=>AlertDialog(
      title:Text("Sucessfully Added") ,
    ),

    );

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder:(context,value,child)=>SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const Text(
                      "How would you like ur coffee?",
                      style: TextStyle(fontSize: 25),
                    ),
                    const SizedBox(height: 25),
                    //list of coffee to buy
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.coffeeShop.length,
                            itemBuilder: (context,index){
                      //get individual coffee
                        Coffee eachCoffee=value.coffeeShop[index];

                      // return the tile for this coffee
                        return CoffeeTile(
                            onPressed:()=>addToCart(eachCoffee) ,
                            icon: Icon(Icons.add),
                            coffee:eachCoffee);
                        },
                        ),
                    ),

                  ],
                ),
            )
        )
    );

  }
}