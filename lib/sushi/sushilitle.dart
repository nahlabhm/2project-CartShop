


import 'package:flutter/material.dart';
import 'package:flutterbook/models/modelssushi.dart';
import 'package:google_fonts/google_fonts.dart';

class Sushilitle extends StatelessWidget {
  const Sushilitle({
    super.key,
    required this.food,
    required this.onTap,
    });
final Food food;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      width:200,
      margin: const EdgeInsets.all(15),
      padding:const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset(food.image,
        height:100),

        Text(food.name, 
        style: GoogleFonts.dmSerifDisplay(
            fontSize: 15,
            color: Colors.black,
           )),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
           Text( food.price.toStringAsFixed(2) +'\Tnd' ),
          Row(
            children:[
                Text(food.rating),
            Icon(Icons.star,
            color: Colors.orangeAccent,
)
            ]
          )
              ],
            )
        ],
      ),
      )
    );
  }
}