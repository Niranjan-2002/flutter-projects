import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Styling"),
        ),
        body: Center(
          child: Container(
          //margincode
            //  margin: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
            //  height: 100,
            // width: 100,
            // color: Colors.blue,

           //decoration

          //  height: 300,
          //  width: 300,
          //  decoration: BoxDecoration(border: Border.all(
          //   color: Colors.yellow,
          //   width: 5,
          //  ),
          //  ),

          //borderRadius

        //  height: 200,
        //  width: 200,
        //  decoration: BoxDecoration(
        //     borderRadius: const BorderRadius.all(
        //       Radius.circular(20),
        //       ),
        //       border: Border.all(
        //         color: Colors.blue,
        //         width: 5,
        //       )
        //  ),

        //  color the container insidethe decoration
        // height: 200,
        // width: 200,
        // decoration: BoxDecoration(
        //   color: Colors.amberAccent,
        //   borderRadius: const BorderRadius.all(Radius.circular(20),
        //   ),
        //   border: Border.all(color: Colors.blue,
        //   width: 5,
        //   ),
          
        // ),

        // boxShadow
        //  height: 200,
        // width: 200,
        // decoration: BoxDecoration(
        //   color: Colors.amber,
        //   borderRadius: const BorderRadius.all(Radius.circular(20),
        //   ),

        //   border: Border.all(color: Colors.blue,width: 5),
        //   boxShadow: const[
        //     BoxShadow(
        //       color: Colors.purple,offset: Offset(30, 30),blurRadius: 8
        //     ),
        //     BoxShadow(
        //       color: Colors.red,offset: Offset(20, 20),blurRadius: 8
        //     ),
        //     BoxShadow(
        //       color: Colors.green,offset: Offset(10, 10),blurRadius: 8
        //     ),
        //     ],
        //   ),

          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(20)),

            // border: Border.all(color: Colors.blue,width: 5),
            gradient: const LinearGradient(
              stops:[0.3,0.7],
              colors:[ Colors.purple,Colors.black],
            )
          ),

              
              
              ),
           ),
        ),
    );
  }
}
