import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    print("In CreateState");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  bool flag = false;
  Scaffold isScaffold() {
    if (flag) {
      return Scaffold(
        appBar: AppBar(
          title: Text("LifeCycle"),
        ),
        body: Container(color: Colors.red),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            print("In setState");

            isScaffold();
          });
        }),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("LifeCycle"),
        ),
        body: Container(
          color: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            print("In setState");
            flag = true;
            isScaffold();
          });
        }),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    print("In InitState");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("In Dispose");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("In Deactivate");
  }

  @override
  Widget build(BuildContext context) {
    print("In Build");
    return isScaffold();
  }
}
