import 'package:flutter/material.dart';
import 'login.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Employ(
      
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
         home: Login()
        
      )
    );
  }
}

class Employ extends InheritedWidget{

    int? id;
   String? name;
   String? username;
  Employ({
      required super.child,
     this.id,
     this.name,
     this.username,
    });

    static Employ of(BuildContext context){

      return  context.dependOnInheritedWidgetOfExactType<Employ>()!;
      
    }
   
    @override 
    bool updateShouldNotify(  Employ oldWidget) {
    return id!= oldWidget.id;
     
      }

}
