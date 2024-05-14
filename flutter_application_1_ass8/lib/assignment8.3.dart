import 'package:flutter/material.dart';
class Assignment3 extends StatelessWidget{
  const Assignment3 ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Center(child :const Text("Hello core2web")),
        actions: [Icon(Icons.favorite,color: Colors.black,)],
        backgroundColor: Colors.purple,
      ),
      body: Center(child: Container(
        height: 200 ,width:350,
        color: Colors.blueAccent,
      ))
    );
  }
}