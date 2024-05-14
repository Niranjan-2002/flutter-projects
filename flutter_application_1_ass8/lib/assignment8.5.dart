import 'package:flutter/material.dart';
class Assignment5 extends StatelessWidget{
  const Assignment5 ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(

     body:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
           children: [
        Image.asset("images/anushri.jpeg",height: 550,width: 550,),
        Image.asset("images/mansi.jpeg",height: 550,width: 550,),
        Image.asset("images/sanika.jpeg",height: 550,width: 550,),

      ],
     ),
   ),
  );
      
    
  }
}