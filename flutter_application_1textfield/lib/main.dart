import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextfieldDemo(),
        
  

      );
  }
}



class TextfieldDemo extends StatefulWidget{

  const TextfieldDemo({super.key});

  @override
  State  createState()=> _TextFieldd();

}
class _TextFieldd extends State {

  TextEditingController name=TextEditingController();
  TextEditingController companyname=TextEditingController();
  TextEditingController location=TextEditingController();
  bool flag=false;

  String? namee;
  String? compname;
  String? loc;
  List<Widget> carts=[];

  void info(){
    namee= name.text;
    compname=companyname.text;
    loc=location.text;

  }
  @override
  void initState(){
    super.initState();

    name.addListener(info);
    companyname.addListener(info);
    location.addListener(info);
  }


  @override
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle:true ,
        
        
        title: Text("TO DO LIST",style:TextStyle(color: Colors.cyan),),
      ),


      body:Column(
        
              children:[
                const SizedBox(
                  height: 20,
                ),
                Row(
                  
                  children:[
         const Text(" enter name",style: TextStyle(color: Colors.blue)),
         const SizedBox(
        width: 15,
      ),
          Container(
            width: 350,
            child: TextField(
            controller: name,
            decoration: InputDecoration(border: OutlineInputBorder()),
          
                  
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 25
      ),
      Row(
       children:[
         
      const Text("enter company name",style: TextStyle(color: Colors.blue),),
      const SizedBox(
        width: 15,
      ),
        Container(
            width: 350,
            child: TextField(
            controller: companyname,
            decoration: InputDecoration(border: OutlineInputBorder()),
          
                  
            ),
          ),
       ],
       
      ),
      const SizedBox(
                  height: 20,
                ),
                Row(
                  
                  children:[
         const Text(" enter location",style: TextStyle(color: Colors.blue)),
         const SizedBox(
        width: 15,
      ),
          Container(
            width: 350,
            child: TextField(
            controller: location,
            decoration: InputDecoration(border: OutlineInputBorder()),
          
                  
            ),
          ),
        ],

    ),
    const SizedBox(
      height: 15,
    ),
    ElevatedButton(onPressed: (){
      
      carts.add(Container(
        margin: EdgeInsets.all(20),
        color:Colors.amber,
        child: Column(
          children: [
            Text(
              "DreamCompany",
            ),
            const SizedBox(
              height: 15,
            ), Text(
              "name:$namee",
            ),
             const SizedBox(
              height: 15,
            ), Text(
              "compnyname:$compname",
            ),
             const SizedBox(
              height: 15,
            ), Text(
              "location:$loc",
            ),
          ],
        ),
      )
      );
      setState(() {
        
      });
    }, child: const Text("submit")),
    const SizedBox(
      height: 35,
    
    ),
    SizedBox(
      height: 400,
      child: ListView.builder(itemBuilder: (context,index)=> carts[index],itemCount: carts.length,),
    )
    ]
      
      )    

    );
 }
}