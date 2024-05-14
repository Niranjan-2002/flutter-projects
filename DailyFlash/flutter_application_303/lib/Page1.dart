import 'package:flutter/material.dart';


class Page1 extends StatefulWidget{
  const  Page1 ({super.key});
  @override
  State createState() => _Page1State();
}



class _Page1State extends State{

Color xys = Color.fromARGB(255, 179, 9, 9);
 Color colorChange(){

    
  
  return xys= Colors.green;
  
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: GestureDetector(
            onTap:  (){colorChange();
            setState(() {
              
            });
            },
          child:
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color:xys,width: 5),
              
            ),
           
          ),
          )
        )
      );
  }
}