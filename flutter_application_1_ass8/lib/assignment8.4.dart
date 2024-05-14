import 'package:flutter/material.dart';
class Assignment4 extends StatelessWidget{
  const Assignment4 ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Center(child :const Text("Hello core2web")),
        actions: [Icon(Icons.favorite,color: Colors.black,)],
        backgroundColor: Colors.purple,
      ),
      body: Center(child: Row(
        children:[
           Container(
        height: 200 ,width:350,
        color: Colors.blueAccent,
      ),
      SizedBox (width: 25,),      
           Container(
        height:200 ,width: 350,
        color: Colors.blue,
           )
           ]
      )
      )
    );
  }
}