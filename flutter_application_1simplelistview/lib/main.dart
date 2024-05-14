import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShowImage(),
    );
  }
}

class ShowImage extends StatefulWidget {
  const ShowImage({super.key});
  @override
  State createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Container"),
        ),
        body: ListView(
          children: [
            Container(
              child: Image.network(
                  "https://tse2.mm.bing.net/th?id=OIP.hGeIqMcCoC2q4aVCnoK6EAHaE5&pid=Api&P=0&h=180"),
            ),
            Container(
              child: Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.nmvCn92-WHDxcfwOQgE2wwHaE7&pid=Api&P=0&h=180"),
            ),
            Container(
              child: Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.l_aL9rRB55GKmCOfFVAUZwHaFj&pid=Api&P=0&h=180"),
            ),
            Container(
              child: Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.MPevR_uFyhIoRReSp2sQxQHaE8&pid=Api&P=0&h=180"),
            )
          ],
        ),
      ),
    );
  }
}
