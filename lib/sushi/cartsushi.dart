import 'package:flutter/material.dart';
import 'package:flutterbook/models/modelssushi.dart';

class Detailssushi extends StatelessWidget {

  const Detailssushi({  super.key,
    required this.food,
  }) ;
final Food food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Image.asset(food.image),
                // Add more details or widgets as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
