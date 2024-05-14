import 'package:flutter/material.dart';
 

 class Page1 extends StatefulWidget{
 const  Page1({super.key});

  @override
  State createState() => _Page1State();
 }

 class _Page1State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
       body:Center(
        child: Container(
          height: 200,
          width: 300,
          decoration:const  BoxDecoration(
            color: Colors.amberAccent,
            // gradient: LinearGradient(colors: [Colors.red, Colors.blue],
            // stops: [0.5,0.5]),
          
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(5, 6),
                spreadRadius: 4,
                blurRadius: 5,
              )
            ]
          ),
        ),
       )
    );
  }

 }