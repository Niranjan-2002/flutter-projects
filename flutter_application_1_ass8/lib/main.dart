import 'package:flutter/material.dart';
import 'package:flutter_application_1_ass8/assignment8.3.dart';
import 'package:flutter_application_1_ass8/assignment8.4.dart';
import 'assignment8.1.dart';
import 'assignment8.2.dart';
import 'assignment8.3.dart';
import 'assignment8.4.dart';
import 'assignment8.5.dart';
import 'assignment8.6.dart';
import 'assignment8.7.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment7(),
      debugShowCheckedModeBanner: false,
        );
    
  }
}
