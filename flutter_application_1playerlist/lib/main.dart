import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Playerlist(),
    );
  }
}


class Playerlist extends StatefulWidget{
 const  Playerlist({super.key});

 @override
  State<StatefulWidget> createState() =>_ListBuilderDemo();
}



class _ListBuilderDemo extends State{
  


Map imageList=
{
  0:[
          "https://tse2.mm.bing.net/th?id=OIP.AH_unx4hsjoD0fl2H2__HAHaEK&pid=Api&P=0&h=180",
          "https://tse2.explicit.bing.net/th?id=OIP.BzyNq53td4dtboUxb2XP3AHaEI&pid=Api&P=0&h=180",
          "https://tse2.mm.bing.net/th?id=OIP.ok7-kZ2a-6GVCMzssvf3_gHaEH&pid=Api&P=0&h=180",
  ],

  1:
  [
         "https://tse3.mm.bing.net/th?id=OIP.EyuACPMl8R6mghsISiHXjwHaD4&pid=Api&P=0&h=180",
         "https://tse3.mm.bing.net/th?id=OIP.giBA3Z-04JXZTOyv6WxklgHaEd&pid=Api&P=0&h=180",
         "https://tse1.mm.bing.net/th?id=OIP.HAmPOC0a78MdnADhInGNQwHaEH&pid=Api&P=0&h=180",
  ],

  2:
  [
         "https://tse3.mm.bing.net/th?id=OIP.zZoSw8Z0z1z_S93Zevk9zwHaGN&pid=Api&P=0&h=180",
         "https://tse2.mm.bing.net/th?id=OIP.bc-tSjdY-DssheJf8xHA-AHaD3&pid=Api&P=0&h=180",
         "https://tse2.mm.bing.net/th?id=OIP.TEpOhC6Ds2qhBv6PCbf_KwHaEH&pid=Api&P=0&h=180",
  ]
};
  @override
  Widget build(BuildContext context){
    

    return Scaffold(
      appBar: AppBar(
        
              title: const Text("Playerlist"),
              centerTitle: true,
      ),
       
      body: ListView.separated(
        itemBuilder: (BuildContext context ,int index){
          int listindex =index;
          return ListView.builder(
            itemCount: imageList[index].length,
            shrinkWrap: true,
            itemBuilder:
           (BuildContext context, int index){
         return Container(
         child:
          Image.network(imageList[listindex][index]),
              
         );
          }
         );
        },
         itemCount:imageList.length,
        separatorBuilder: (BuildContext context ,int index){
       
        return  Container(
          height: 25,
          width: 200,
          color:Colors.blueGrey,
         
        );
         },
      )
   );

  }
}
