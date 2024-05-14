import 'package:flutter/material.dart';
class Assignment1 extends StatefulWidget{

  Assignment1({super.key});
  @override
  State<StatefulWidget > createState() => _assingmentstate();
}
class _assingmentstate extends State{
int? selectedIndex= 0;
List l1=[121,232,300,414];
num palcount=0;
num armcount=0;
_cheakpalendrom(){
  palcount=0;
  setState(() {
    
    for(int i=0;i<4;i++){
          num temp=l1[i];
          num x=0;
         while(temp!=0){
          num rem=temp%10;
           x=x*10+rem;
         temp=temp~/10;
         }
         if(x==l1[i]){
          palcount=palcount+1;
         }
    }
 }
  );
}
_cheakpalendrome(){
  armcount=0;
  setState(() {
    
    for(int i=0;i<4;i++){
          num temp=l1[i];
          num x=0;
         while(temp!=0){
          num rem=temp%10;
           x=x*10+rem;
         temp=temp~/10;
         }
         if(x==l1[i]){
          armcount=armcount+1;
         }
    }
 }
  );
}
@override
Widget build(BuildContext context){

  return Scaffold(
    appBar: AppBar(
      title: Text ("Assingment1"),
   ), 
   body: Center(
    child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children:[
           Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Text("press button to amstrong"),SizedBox(height: 15),
        SizedBox(height: 15),
        ElevatedButton(onPressed:_cheakpalendrom, child: Text("cheaked")),
        Text("$palcount"),


],
),
SizedBox(width: 20),
Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Text("press button to cheak pallendrom"),SizedBox(height: 15),
        SizedBox(height: 15),
        ElevatedButton(onPressed:_cheakpalendrome, child: Text("cheaked")),
        Text("$armcount"),


],
),
        ],
),
 ),
  );

}

}