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
        body: Center(
          child: Container(
            
              height: 70,
              width: 300,
              decoration:  BoxDecoration(
                color: const Color.fromRGBO(154, 50, 123, 0.721),
                border: Border.all(color: Color.fromARGB(255, 17, 4, 19)),
              
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ), 
              child:const Center(child: Text("Your Name")) ,
              ),
          ) ,
        ),
    
    );
  }
}
