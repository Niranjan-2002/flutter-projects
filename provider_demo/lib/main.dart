import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';


class Company {
  int empcount;
  String compname;
  Company({
    required this.compname,required this.empcount

  });
}

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(create:(context){
      return Company(compname: "Google", empcount: 700);

    },
    child: Myapp(),
    );
  }
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Provider"),
            centerTitle: true,
          ),
          body:Column(
            children: [
              Text(Provider.of<Company>(context).compname),
              const SizedBox(
                height: 18,
              ),
              Text("${Provider.of<Company>(context).empcount}"),
              const SizedBox(
                height: 18,
              ),
               ElevatedButton(onPressed: (){
                setState(() {
                  Provider.of<Company>(context,listen: false).compname= "FlipKart";
                });
               }, 
               child: Text("Change c name"))
              
            ],
          )
        ),

    );

  }
}
