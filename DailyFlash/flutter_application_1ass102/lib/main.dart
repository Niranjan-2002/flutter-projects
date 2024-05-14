import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
        backgroundColor:const  Color.fromARGB(190, 151, 10, 227),
         leading: IconButton(onPressed: (){

         }, icon:const Icon(Icons.access_time,
         color:Colors.amber )),
        
        actions :<Widget> [
        IconButton(onPressed: (){}, icon:const Icon(Icons.favorite),
        ),
        IconButton(onPressed: (){}, icon:  const Icon(Icons.search)
        ),
        IconButton(onPressed: (){}, icon:  Icon(Icons.menu)
        )

        ],
        ),

        body: const Center(
          child: Text("Day1-Assignment 2"),
        ),
      ),
    );
  }
}
