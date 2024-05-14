// import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart'as pt ;

dynamic database;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => ToDoListState();
}

class Modelclass {
  int? tId;
  String title;
  String discription;
  String date;

  Modelclass({
    this.tId,
    required this.title,
    required this.discription,
    required this.date,
  });

  Map<String, dynamic>  taskMap(){
    return {
      'title':title,
      'discription':discription,
      'date':date
    };
  }

  @override
  String toString() {
   
return "{$title, $discription, $date}";
  }
}

class ToDoListState extends State {
  List carts = [];

@override
  void initState() {
   
    super.initState();
    openDB();
    }

// database create krty
    void openDB()async{
      database =  openDatabase(
      pt.join(await getDatabasesPath(),"taskDB.db"),
      version: 1,
      onCreate: (db,version)async{
        await db.execute('''
          CREATE TABLE taskTable(
            tId INTEGER PRIMARY KEY,
            title TEXT,
            discription TEXT,
            date TEXT
          )
          ''');
      }
      
    );
      //carts=await getData();
     // print(await getData());

    setState((){});
    }

    //// hi method database madhe data insert karte
    Future insertDB(Modelclass obj)async{
      final localdb = await database;
      await localdb.insert(
        "taskTable",
        obj.taskMap(),
        conflictAlgorithm: ConflictAlgorithm.replace
      );

      carts = await getData(); 
      setState(() {
        
      }); 
    }

    Future<void> deleteDate(int data)async{
      final localdb= await database;

      await localdb.delete("taskTable",
      where:"tId = ?",
      whereArgs:[data]
      );
    }

     Future  updateTask (Modelclass obj)async{
      final localdb=  await database;
      await localdb.update(
        "taskTable",
        obj.taskMap(),
        where :'tId =?',
        whereArgs:[obj.tId]

      );
     }

    ///hi method database madla data get karte 
    Future<List<Modelclass>> getData()async{
      final localdb = await database;
      List taskList = await localdb.query("taskTable");
      return List.generate(taskList.length, (i) {
            return Modelclass(
              tId: taskList[i]["tId"],
              title: taskList[i]["title"], discription: taskList[i]['discription'], date: taskList[i]['date']);
      });
    }

  void submit(bool doEdit,[Modelclass? modelclassobj]){

    if(titleController.text.trim().isNotEmpty && discriptionController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty){
      if(doEdit){

        modelclassobj!.title=titleController.text;
        modelclassobj.discription=discriptionController.text;
        modelclassobj.date=dateController.text;
      }
      else{
        insertDB(
          Modelclass(
          date: dateController.text.trim(),
          discription:discriptionController.text.trim(),
          title:titleController.text.trim()
          )
        );
        setState(() {
          
        });
      }
      titleController.clear();
      discriptionController.clear();
      dateController.clear();
      setState(() {});
    }
    
  }

  void showmodelbootmsheetDemo(bool doEdit,[Modelclass? modelclassobj]){
     showModalBottomSheet( 
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30),
            ),
          ),

            //hyat 2 required parameter ahet je li
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  right: 10,
                  left: 10,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Create Task"),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Title",
                          //style: GoogleFonts.quicksand(
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                            controller: titleController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            )),
              
                        const SizedBox(height: 10),
              
                        //
                        const Text(
                          "Description",
                          //style: GoogleFonts.quicksand(
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        TextField(
                          controller: discriptionController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                        const SizedBox(height: 10),
              
                        //
                        const Text("Date"),
                        TextField(
                          controller: dateController,
                          readOnly: true,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.calendar_month_outlined),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ))),
                          onTap: () async {
                            DateTime? pickdate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2024),
                                lastDate: DateTime(2025));
                            String formateDate =
                                DateFormat.yMMMd().format(pickdate!);
              
                            setState(() {
                              dateController.text = formateDate;
                            });
                          },
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {

                          if(doEdit){
                            submit(doEdit,modelclassobj);
                          }else{
                            submit(doEdit);
                          }
                          Navigator.pop(context);
                        },
                        child: const Text("submit"))
                  ],
                ),
              );
            },
          );
  }

  void edittask(Modelclass modelclassobj) {
    titleController.text = modelclassobj.title;
    discriptionController.text = modelclassobj.discription;
    dateController.text = modelclassobj.date;

    showmodelbootmsheetDemo(true,modelclassobj);
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();


  List conColor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  bool flagogcheak = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.purpleAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,


        children: [

        //  const  SizedBox(
        //     height: 100,
        //   ),

          const Text("   नमस्कार... ",style: TextStyle(fontSize: 30),),
            const Text("कृपया  तुमचे दैनंदिन काम करा किंवा हटवा.."),

           Expanded(
             child: Container(
              height: 300,
                decoration:const  BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),topRight: Radius.circular(50)
                  )
                ),
                padding:const  EdgeInsets.only(
                  top: 50
                ),
                
                  child: Container(
                    
                    decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),topRight: Radius.circular(40)
                  )
                ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListView.builder(
                          itemCount: carts.length,
                          itemBuilder: (context, index) {
                            return  Slidable(
                              endActionPane: ActionPane(motion: const StretchMotion(), children: [
                                SlidableAction(
                                 onPressed: (context) {
                                   setState(() {
                                                carts.removeAt(index);
                                              });
                                   
                                 },
                                 backgroundColor: Colors.white,
                                 icon: Icons.delete,
                                 
                                ),
                                SlidableAction(
                                 onPressed: (context) {
                                  setState(() {
                                     
                                                edittask(carts[index]);
                                              
                                  });
                                   
                                 },
                                 backgroundColor: Colors.white,
                                 icon: Icons.edit
                                )
                              ]),
                              child: Container(
                                padding:const  EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 5
                                ),
                                margin: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: conColor[index % conColor.length],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                height: 120,
                                //width: 330,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          carts[index].title,
                                          //style: GoogleFonts.quicksand(
                                          style: const TextStyle(
                                              fontSize: 12, fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          decoration:
                                              const BoxDecoration(shape: BoxShape.circle),
                                          child: Image.asset("assets/th.jpeg"),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                         Text(carts[index].discription)
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          carts[index].date,
                                          //style: GoogleFonts.quicksand(
                                          style:const TextStyle(
                                              fontSize: 10, fontWeight: FontWeight.w500),
                                        ),
                                        const Spacer(
                                          flex: 8,
                                        ),
                                        // Row(
                                        //   children: [
                                        //     GestureDetector(
                                        //       onTap: () {
                                        //         edittask(carts[index]);
                                        //       },
                                        //       child: const Icon(Icons.edit_outlined),
                                        //     )
                                        //   ],
                                        // ),
                                        // const SizedBox(width: 2),
                                        // IconButton(
                                        //     onPressed: () {
                                        //       setState(() {
                                        //         carts.removeAt(index);
                                        //       });
                                        //     },
                                        //     icon: const Icon(Icons.delete)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
              
              ),
           ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ha parameter bottom sheet pop up  sathi ahe
        showmodelbootmsheetDemo(false);
         
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
