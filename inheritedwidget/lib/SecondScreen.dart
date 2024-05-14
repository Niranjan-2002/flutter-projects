import 'package:flutter/material.dart';
import 'main.dart';
import 'Skill.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    Employ obj=Employ.of(context);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue,
        title: Text("Details.."),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        
          child: Center(
            child: Column(
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const  Row( mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    Text("DETAILS",style: TextStyle(color:  Colors.amberAccent), ),
                 ],
               ),
              const SizedBox(
                height: 20,
               ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

               const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
             Text("id:"),
             SizedBox(
                height: 12,
               ),
             Text("name:"),
             SizedBox(
                height: 12,
               ),
             Text("username:"),
              SizedBox(
                height: 12,
               ),
                ]
              ),
              const SizedBox(
                height: 18,
               ),
               
               Column(
                children: [
             Text("${obj.id}"),
            const SizedBox(
                height: 12,
               ),
             Text("${obj.name}"),
             const SizedBox(
                height: 12,
               ),
             Text("${obj.username}"),
             const SizedBox(
                height: 12,)
                ]
              )
              ,]
              ),
             const SizedBox(
                height: 20,),
              
            
             ElevatedButton(onPressed: (){
         
                 
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Skill()),
                );
                  
                
              }, child: Text("add Skill")) 
               ]
              ),
              
          ),
        ),
      
      );
  }
}