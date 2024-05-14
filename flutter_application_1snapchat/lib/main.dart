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
          backgroundColor: Colors.yellowAccent,
          title: Text("Chat",style:TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed:(){}, icon: Icon(Icons.account_box,color: Colors.black,)),
            IconButton(onPressed:(){}, icon: Icon(Icons.more_horiz,color: Colors.black,)),
          ],
          leading:Icon(Icons.search,color: Colors.black,) ,
        ),
        body:SingleChildScrollView(
          child: Column(
           children: [
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075602.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("satyam ladu!!")),
                 Icon(Icons.favorite),
                
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/im1.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("Shubham patil")),
                        Icon(Icons.ac_unit_sharp),
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075615.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("kunal desai")),
                        Icon(Icons.abc_outlined),
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/mulgi2.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("mulgi")),
                  Spacer(),Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
               Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/mulgi.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("mulgi2")),
                        Icon(Icons.favorite),
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
               Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075602.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("Gaurav")),
                 Icon(Icons.favorite),
                
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/im1.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("Sanjya")),
                        Icon(Icons.ac_unit_sharp),
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075615.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("aditya khetre")),
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/mulgi2.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("shakhubai")),
                        Icon(Icons.accessibility_new),
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
               Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/mulgi.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("Gangubai")),
                  Spacer(),Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075602.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("apa chor")),
                 Icon(Icons.favorite),
                
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075602.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("Akshay gaundar")),
                 Icon(Icons.favorite),
                
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075602.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("sakharam")),
                 Icon(Icons.favorite),
                
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075602.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("ganesh vaske")),
                 Icon(Icons.favorite),
                
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075602.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("sandip")),
                 Icon(Icons.favorite),
                
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
              SizedBox(height: 10,width: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:Image.asset('images/Screenshot 2024-02-07 075602.png'),
                  ),
                  SizedBox(width: 15,),
                SizedBox(child:
                        Text("gulabraw")),
                 Icon(Icons.favorite),
                
                  Spacer(),
                  Icon(Icons.chat)
                  
                ],
              
              ),
            ],
            
          ),
          
        ),
        bottomNavigationBar:BottomNavigationBar(
          backgroundColor:Color.fromARGB(255, 244, 244, 113),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.location_disabled,color: const Color.fromARGB(255, 8, 8, 5),),
              label: 'chat'),
            
              
              
               BottomNavigationBarItem(
              icon: Icon(Icons.chat,color: const Color.fromARGB(255, 8, 8, 6),),
              label: 'chat'),

               BottomNavigationBarItem(
              icon: Icon(Icons.camera,color: const Color.fromARGB(255, 9, 9, 9),),
              label: 'camera'),
              

               BottomNavigationBarItem(
              icon: Icon(Icons.contact_page,color: const Color.fromARGB(255, 6, 6, 5),),
              label: 'contacts'),
              
          ]
          )
         ),
      
      );
  }
}
