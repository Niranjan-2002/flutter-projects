import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:  false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle:  true,
          title: const Text('AppBar',
           style: TextStyle(fontSize: TextSelectionToolbar.kToolbarContentDistanceBelow),),
          backgroundColor: const Color.fromRGBO(107, 240, 240, 0.543),
        
          

        ),

        body: const Center(
          child: Text('Day-Assignment3'),
        ),
      ),
    );
  }
}
