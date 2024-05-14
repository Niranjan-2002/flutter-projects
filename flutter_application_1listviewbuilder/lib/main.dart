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
  List<Widget> li = [];
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
            return li[index];
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              cnt++;
              li.add(Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                height: 100,
                width: 300,
                child: Text("$cnt"),
                color: Colors.amber,
              ));
            });
          },
          child: Text("Next"),
        ),
      ),
    );
  }
}