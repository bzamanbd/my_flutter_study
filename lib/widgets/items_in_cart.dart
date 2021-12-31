import 'package:flutter/material.dart';
import '../providers/cart_provider.dart';
import 'package:provider/provider.dart';
class ItemsInCart extends StatelessWidget {

  final String id;
  final String foodId;
  final String title;
  final double price;
  final int quantity;

const ItemsInCart(
  this.id,
  this.foodId,
  this.title,
  this.price,
  this.quantity, {Key? key}
) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Dismissible(
        key: ValueKey(id),
        direction: DismissDirection.endToStart,
        confirmDismiss: (direction){
          return showDialog(
            context: context, 
            builder: (context)=>  AlertDialog(
              title: const Text('Are You Sure?'),
              content: const Text('Do You want to remove this item from the cart?'),
              actions: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop(false);
                  }, 
                  child: const Text('No')
                ),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop(true);

                  }, 
                  child: const Text('Yes')
                )
              ],
            ));
          
        },
        onDismissed: (direction){
          Provider.of<CartProvider>(context,listen: false).removeItem(foodId);
        },
        background: Container(
          color: Theme.of(context).errorColor,
          child: const Icon(Icons.delete_forever,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        ),


        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
            horizontalTitleGap: 40,
              leading: CircleAvatar(
                child: Text('$price'),
             radius: 30,
              ),
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 18
                ),
                ),
              subtitle: Text('Total : Tk ${(price*quantity)}'),
              trailing: Text('$quantity x',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}