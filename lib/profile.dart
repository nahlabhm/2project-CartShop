

import 'package:flutter/material.dart';
import 'package:flutterbook/models/products.dart';
import 'package:flutterbook/models/shop.dart';
import 'package:provider/provider.dart';

class Drawerscreens extends StatelessWidget {
  const Drawerscreens({
    super.key,
    required this.product,

    });
final Product product;

void addtocart(BuildContext context){
     showDialog(context: context, 
     builder: (context)=>
     AlertDialog(
      content: Text("add this item to you cart"),
      actions: [
         MaterialButton(
          onPressed: ()=>Navigator.pop(context),
        child: Text("Cancel"),
         ),
           MaterialButton(
            onPressed: (){Navigator.pop(context);
            context.read<Shop>().addtocart(product);
            },
        child: Text("Yes"),
         ),
     ],
     )
     );
}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(15)
      
      ) , 
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(25),
              width:330,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,

      children:[
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                 child:Container(
                 decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20)
                 ),
                 width: double.infinity,
                 padding: EdgeInsets.all(10),
             child: Image.asset(product.image),
              ),
              ),
              Text(product.name),

             Text(product.description),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           Text('\TND' + product.price.toStringAsFixed(2)),

           Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
             child: IconButton(icon: Icon(Icons.add), onPressed: ()=>addtocart(context),),
           )
            ]
          )
      ]   )
    );
   
  }
}
