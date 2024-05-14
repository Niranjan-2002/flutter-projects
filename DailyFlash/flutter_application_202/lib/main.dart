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
            height: 100,
            width: 100,
            padding:const EdgeInsets.all(5.0),
            decoration:const BoxDecoration(
              color:Colors.amber,
              border: BorderDirectional(start: BorderSide(width: 5)),
            ),
            child:const Text("daily flash",textAlign: TextAlign.center,),
          )
        ),
      ),
    );
  }
}
