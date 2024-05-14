import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
         
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Container(
                height: 100,
                width: 500,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                width: 500,
                color: Colors.white,
              ),
              Container(
                height: 100,
                width: 500,
                color: Colors.green,
              ),
            ],
          ),
        ),
               floatingActionButton: Center(
                 child: Container(
                  padding: EdgeInsets.fromLTRB(0, 44, 0, 0),
                  child: FittedBox(child: FloatingActionButton(onPressed: () {
                    
                  },
                  ),
                  ),
                 )
                 ),
        ),
      );
    
  }
}
