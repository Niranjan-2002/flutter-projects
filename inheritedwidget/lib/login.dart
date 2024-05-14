import 'package:flutter/material.dart';
import 'package:inheritedwidget/main.dart';
import 'SecondScreen.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController idController=TextEditingController();
  TextEditingController nameController=TextEditingController();

  TextEditingController usernameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    Employ obj=Employ.of(context);
    return Scaffold(
       appBar: AppBar(foregroundColor: Colors.blue,
        title: Text("Login Screen"),
        
        centerTitle: true,
        
       ),
       body: Padding(
         padding: const EdgeInsets.all(30),
         child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
         
            children: [
              TextFormField(
                controller: idController,
                decoration: const InputDecoration(labelText: "enter id",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),),
                
              ),
             const  SizedBox(
                height: 14,
              ),TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "enter name",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),),
              ),
             const  SizedBox(
                height: 14,
              ),TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(labelText: "enter UserName",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),),
         
              ),
             const  SizedBox(
                height: 14,
              ),
              
              ElevatedButton(onPressed: (){
         
                  obj.id=int.tryParse(idController.text);
                  obj.name=(nameController.text);
                  obj.username=(usernameController.text);
         
                  if(idController.text.isNotEmpty&&nameController.text.isNotEmpty&&usernameController.text.isNotEmpty){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
                );
                  }
                
              }, child: Text("Submit")) 
              
            ],
          ),
         ),
       ),
    );
  }
}