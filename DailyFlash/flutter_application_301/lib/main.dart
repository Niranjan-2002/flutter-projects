import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
              height: 300,
              width: 300,
              color: Color.fromARGB(255, 224, 144, 184),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://images.pexels.com/photos/6712456/pexels-photo-6712456.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
          )
        ),
      ),
    );
  }
}
