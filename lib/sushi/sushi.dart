



import 'package:flutter/material.dart';
import 'package:flutterbook/models/Foodsushi.dart';
import 'package:flutterbook/sushi/cartsushi.dart';
import 'package:flutterbook/sushi/sushilitle.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SushiHomepages extends StatefulWidget {
  const SushiHomepages({super.key});

  @override
  State<SushiHomepages> createState() => _SushiHomepagesState();
}

class _SushiHomepagesState extends State<SushiHomepages> {

  void detailsscreenssushi(int index) {
    final food = context.read<Foodsushi>().foodMenu;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Detailssushi(food: food[index]),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final food = context.read<Foodsushi>().foodMenu;
    return Scaffold(
              backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0, 
         backgroundColor: Colors.grey.shade100,      
          leading: Icon(Icons.menu,       
            color: Colors.black,),
         title: Text('Tokyo',
        style: GoogleFonts.dmSerifDisplay(
            fontSize: 16,
            color: Colors.black,
           ),
          ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 138, 60, 55),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("promotion 50%"),
                    SizedBox(height: 20,),
                    OutlinedButton(onPressed: (){},
                    style:  OutlinedButton.styleFrom(
                    ),
                     child:Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Get Started",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
    ],
  ),
  )
                ],
                ),
                Image.asset("assets/sushi (1).png",
                height: 120,)
              ],
            ),
          ),
          SizedBox(height: 15,),
         Padding(padding: EdgeInsets.symmetric(horizontal: 20),
         child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search...",
              fillColor:Colors.grey.shade100 ,
              filled: true,
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.white)
              ),
              focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.white)
              )
            )
            ),
          ),
                    SizedBox(height: 15,),
           Padding(padding: EdgeInsets.symmetric(horizontal: 20),
             child: Text("Food Menu",
              style: GoogleFonts.dmSerifDisplay(
            fontSize: 17,
            color: Colors.black,
           )),
           ),

                    SizedBox(height: 15,),
       Expanded(
       child:  SizedBox(
        height: 550,
         child:  ListView.builder(
  itemCount: Foodsushi().foodMenu.length,
  scrollDirection: Axis.horizontal,
  itemBuilder: (BuildContext context, int index) {
    final food = Foodsushi().foodMenu[index];
    return Sushilitle(
      onTap: ()=>detailsscreenssushi(index),
      food: food,
    );
  },
),
         ) 
          ),

         Container(
          decoration: BoxDecoration( 
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
          padding: EdgeInsets.all(20),
         child: Row(
            children:[
         Image.asset("assets/uramaki.png",
         height: 60,),
         SizedBox(width:25),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("sallemons egs "),
              SizedBox(height: 5,),
              Text("22 TND")
            ],
           )
            ]
          ))
        ],
      ),
    );
  }
}