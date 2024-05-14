import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends State {
  List<String> li = [
   "https://tse4.mm.bing.net/th?id=OIP.m2LBb1vSRsTsaCQfTT8P5QHaEo&pid=Api&P=0&h=180",
   "https://tse3.mm.bing.net/th?id=OIP.BoudDIbBJNNYeOwmjaYRPAHaEK&pid=Api&P=0&h=180",
   "https://tse1.mm.bing.net/th?id=OIP.dsiC7a1xQd-CPZpBuMeCDgHaE8&pid=Api&P=0&h=180",
   "https://tse4.mm.bing.net/th?id=OIP.bw3XMfTrvSHaR3aG58gd1QHaEK&pid=Api&P=0&h=180"
  ];
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Listview"),
        ),
        body: ListView.builder(
          itemCount: li.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(3),
              child: Image.network(li[index]),
            );
          },
        ),
      ),
    );
  }
}
