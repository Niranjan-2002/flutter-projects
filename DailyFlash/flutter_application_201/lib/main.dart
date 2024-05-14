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
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.red,width: 12)
              ,borderRadius: BorderRadius.circular(10),
            ),
            child:const Center(
              child:Text("center of box"),)
          )
        ),
      ),
    );
  }
}
