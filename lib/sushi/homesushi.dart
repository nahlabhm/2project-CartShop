import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Suchiscreens extends StatelessWidget {
  const Suchiscreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body:Padding(padding: EdgeInsets.all(25),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text("SUNSHINE",
           style: GoogleFonts.dmSerifDisplay(
            fontSize: 28,
            color: Colors.white,
           ),
          
           ),
          Padding( padding:EdgeInsets.all(25),
          child: Image.asset("assets/sushi (3).png"),
          ),
           
          Text("THE TASTE OF JAPANESE FOOD ",
           style: GoogleFonts.dmSerifDisplay(
            fontSize: 44,
            color: Colors.white,
           ),),
            Text("feel the taste of the most popular Japonese food feel the taste of the most popular Japonese food  ",
           style:TextStyle(
            color: Colors.grey,
           ),),
           SizedBox(height: 10,),
 SizedBox(
    height: 50, // Set
        child: OutlinedButton(
 onPressed: () {
  Navigator.popAndPushNamed(context, '/introsushi');
},

 style: OutlinedButton.styleFrom(
    elevation: 2, 
    // Elevation (shadow)
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20), // Border radius
    ),
  ), 
   child: Row(
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
))

        ])
      )
    );
  }
}