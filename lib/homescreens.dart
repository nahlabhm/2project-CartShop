


import 'package:flutter/material.dart';
import 'package:flutterbook/cart.dart';
import 'package:flutterbook/models/shop.dart';
import 'package:provider/provider.dart';

import 'profile.dart';

class Homescreens extends StatelessWidget {
  const Homescreens({super.key});

 
  @override
  Widget build(BuildContext context) {
      final products = context.watch<Shop>().shop;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
              title: Text("Shopping"),      
              actions: [
                IconButton(icon: Icon(Icons.shop_rounded), onPressed: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                 },)
              ],
      ),
       drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
            
            DrawerHeader(
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.book_sharp, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.library_books),
              title: Text("Books"),
            ),
          ],
        ),
         ListTile(
              onTap: () {},
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
            ),
   ]    )
      
      
       ),

       body:ListView(
        children:[
          SizedBox(height:10),
        Center(
             child:Text("💰📱 Minimal Ecommerce App • Flutter Tutorial")
        ),
          SizedBox(
        height: 550,
       child:ListView.builder(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
             final product =products[index];

             return  Drawerscreens(product:product);
          },),
       )
      ] )
    );
  }
}