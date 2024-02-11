

import 'package:flutter/material.dart';
import 'package:flutterbook/models/products.dart';
import 'package:flutterbook/models/shop.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

void removetocart(BuildContext context,Product product){
 showDialog(context: context, 
     builder: (context)=>
     AlertDialog(
      content: const Text("Remove this item to you cart"),
      actions: [
         MaterialButton(
          onPressed: ()=>Navigator.pop(context),
        child:const Text("Cancel"),
         ),
           MaterialButton(
            onPressed: (){Navigator.pop(context);
            context.read<Shop>().removetocart(product);
            },
        child: Text("Yes"),
         ),
     ],
     )
     );
}

void paybutton(BuildContext context){
  showDialog(context: context, 
     builder: (context)=>
     AlertDialog(
      content: const Text("payer this item "
      )
     )
  );
}
  @override
  Widget build(BuildContext context) {
    final Cart=context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
              title: Text("Cart Page"),      
      ),
      body: Column(
        children: [
          Expanded(
            child: Cart.isEmpty
            ? const Center(child: Text("your cart is empty..."),)
            :ListView.builder(
            itemCount: Cart.length,
            itemBuilder: (BuildContext context, int index)
             { 
              final item=Cart[index];
              return ListTile(
                title: Text(item.name),
                subtitle: Text(item.price.toStringAsFixed(2)+'\TND'),
                trailing: IconButton(icon: Icon(Icons.remove),
                 onPressed: ()=>removetocart(context,item),),
              );
              },
           )
           ),
           Padding(
            padding:EdgeInsets.all(20),
            child: OutlinedButton(onPressed: ()=>paybutton(context),
            child:Text("Pay")
            ),
           )
        ],
      ),
    );
  }
}