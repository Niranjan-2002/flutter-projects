import 'package:flutter/material.dart';
class Assignment2 extends StatelessWidget{
  const Assignment2 ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Center(child :const Text("do the code till the core")),
        actions: [Icon(Icons.favorite,color: Colors.black,)],
      )
    );
  }
}