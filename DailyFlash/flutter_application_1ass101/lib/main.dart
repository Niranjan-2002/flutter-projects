import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text("Assingment-1"),
          
          leading: IconButton(onPressed: (){},icon: const Icon(Icons.access_alarm),),
          actions:<Widget> [
          IconButton(
           
          icon: const  Icon(Icons.menu),
          onPressed: () {
         }, ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
        

          ],
        ),
  
        body:const  Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
