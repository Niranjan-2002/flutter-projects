import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
             height: 250,
             width: 250,
             alignment: Alignment.center,
              decoration:const BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/6712456/pexels-photo-6712456.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))
              ),
             child:

                 const Text("heyy niru!!",style: TextStyle(fontWeight: FontWeight.w600,)),
                 
                
                
             
             
          )
        ),
        )
      
    );
  }
}
