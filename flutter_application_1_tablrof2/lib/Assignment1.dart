import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  @override
  State createState() => _Assignment1State();
}

class _Assignment1State extends State {
  int? _count = 0;
  void _printTable() {
    setState(() {
      _count = _count! + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Press button to print table"),
            const SizedBox(
              height: 20,
            ),
            Text("$_count"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _printTable, child: Text("Print")),
          ],
        ),
      ),
    );
  }
}