import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

bool colorFlag=false;





class MainApp extends StatelessWidget {
  const MainApp({super.key});
 void  function(){
   if(colorFlag==false){
    Color.fromARGB(189, 185, 156, 1)
   }
   else{
    Color.fromRGBO(211, 210, 109, 0.8)
   }

  }


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child:  Container( height: 200,width: 200,
            decoration: const BoxDecoration(
              
              borderRadius: BorderRadius.only(topRight: Radius.circular(25))
            ),     
            child: ElevatedButton(onPressed: (){
                      
              setSta
            },
             child: const Text("Click Me!!")
            
            
            ),  
          )
        ),
      ),
    );
  }
}
