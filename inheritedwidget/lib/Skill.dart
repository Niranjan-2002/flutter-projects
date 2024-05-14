import 'package:flutter/material.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State <Skill> createState() =>  SkillState();
}

class  SkillState extends State <Skill> {
  List SKillList=[];
  TextEditingController SkillController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.blue,
        title: Text("Skill"),
        centerTitle: true,),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
                controller: SkillController,
                decoration:const  InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: "Add Skill"),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  SKillList.add(SkillController.text);
                });
              },child: Text("Add "),
              ),
              Container(
                height: 150,
                width: 150,
                child: ListView.builder(itemCount: SKillList.length,itemBuilder:(BuildContext context, index) {
                  return Text(SKillList[index]);
                })
                ),
                 
                   
        ],
      ),
      ),
    );
  }
}