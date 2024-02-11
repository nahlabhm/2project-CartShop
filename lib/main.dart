import 'package:flutter/material.dart';
import 'package:flutterbook/models/shop.dart';
import 'package:flutterbook/sushi/homesushi.dart';
import 'package:flutterbook/sushi/sushi.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context)=>Shop(),
    child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: const Suchiscreens(),
 
   routes: {
  '/introsushi': (context) => SushiHomepages(),
},

    );
  }
}
