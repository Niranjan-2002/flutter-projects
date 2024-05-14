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
          child: ElevatedButton(onPressed: (){},
          
                 child: Container(
                  alignment: Alignment.center,
          height: 200,
          width: 200,
          
          
          decoration:const  BoxDecoration(
          
            
          color: Colors.amberAccent,
          shape: BoxShape.circle,
          
        
          
          border: 
            // gradient: LinearGradient(colors: [Colors.red, Colors.blue],
            // stops: [0.5,0.5]),
          
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.red,
            //     offset: Offset(5, 6),
            //     spreadRadius: 4,
            //     blurRadius:7,
            //   )
            // ]
          ),
          child: Text("button"),
        ),
          )
        ),
      ),
    );
  }
}
