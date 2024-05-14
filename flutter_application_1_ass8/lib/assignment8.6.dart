import 'package:flutter/material.dart';
class Assignment6 extends StatelessWidget{
  const Assignment6({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Center(child :const Text("Hello core2web")),
        actions: [Icon(Icons.favorite,color: Colors.black,)],
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                      Container(
                        height: 250,width: 250,
                        color: Colors.yellow,
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 250,width: 250,
                        color: Colors.red,
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 250,width: 250,
                        color: Colors.limeAccent,
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 250,width: 250,
                        color:  Colors.black12,
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 250,width: 250,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 250,width: 250,
                        color: Colors.deepOrangeAccent,
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 250,width: 250,
                        color: Colors.lightGreen,
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 250,width: 250,
                        color: Colors.yellow,
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 250,width: 250,
                        color: const Color.fromARGB(255, 255, 59, 167),
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 250,width: 250,
                        color: Color.fromARGB(255, 10, 134, 186),
                      ),
 
         ]
        ) 
      ),
    )
   );
  }
}