import 'package:flutter/material.dart';
import '../widgets/items_in_cart.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mycart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Cart'
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              margin:  const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    const Text('Total',style: TextStyle(fontSize: 20),),
                    const Spacer(),
                    Chip(label: Text('Tk ${mycart.totalAmount.toStringAsFixed(2)}',
                    style:  const TextStyle(fontSize: 20.0, color: Colors.white),),
                    padding: const EdgeInsets.all(8.0),
                    backgroundColor: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
            Expanded(

             child: ListView.builder(
               itemCount: mycart.items.length,
               itemBuilder: (cnt, i)=>  ItemsInCart(
                 mycart.items.values.toList()[i].id,
                 mycart.items.keys.toList()[i],
                 mycart.items.values.toList()[i].title,
                 mycart.items.values.toList()[i].price,
                 mycart.items.values.toList()[i].quantity,
               )
              )
            )],
        ),
      ),
    );
  }
}