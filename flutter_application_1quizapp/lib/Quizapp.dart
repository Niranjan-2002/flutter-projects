import 'package:flutter/material.dart';

class Quizapp extends StatefulWidget{
  Quizapp({super.key});

  @override
  State createState() => _QuizAppState();
  
}
class _QuizAppState extends State<Quizapp> {
   List<Map> allQuestions=[
    {
      "question":"Who create the App",
      "options":["niranjan","Gaurav","Duryodhan","Ramprasad"],
      "ansIndex": 0
    },
    {
      "question":"Who Help Niranjan To Create The App",
      "options":["Kunal","Gourav","Satyam","No of This"],
      "ansIndex":1
    },
    {
      "question":"The Credit Behind This App",
      "options":["Niranjan","Core2Web","Youtube","Collage"],
      "ansIndex":1
    }
   ];

   int queIndex=0;
   int ansSelect1=-1;
   int ansSelect2=-1;
   int ansSelect3=-1;
   int ansSelect4=-1;


   void  corectAns(){
    int temp=allQuestions[queIndex]["ansIndex"];
    if(temp==0){
      ansSelect1=0;
      selected1();
    }
    else if( temp==1){
      ansSelect2=1;
      selected2();
    }
    else if(temp ==2){
      ansSelect3=2;
      selected3();
    }
    else{
      ansSelect4=3;
      selected4();
    }
   }



   Color selected1(){
      if(ansSelect1 == -1){
        return Colors.brown;
      }
      else if(ansSelect1==allQuestions[queIndex]["ansIndex"]){
        return Colors.greenAccent;
      }
      else{
        corectAns();
        return Colors.redAccent;
      }
   }
   Color selected2(){
    if(ansSelect2 ==-1){
      return Colors.brown;
    }
    else if(ansSelect2==allQuestions[queIndex]["ansIndex"]){
return Colors.greenAccent;
    }
    else{
      corectAns();
      return Colors.redAccent;
    }
   }
   Color selected3(){
      if(ansSelect3 == -1){
        return Colors.brown;
      }
      else if(ansSelect3==allQuestions[queIndex]["ansIndex"]){
        return Colors.greenAccent;
      }
      else{
        corectAns();
        return Colors.redAccent;
      }
   }
   Color selected4(){
    if(ansSelect4 ==-1){
      return Colors.brown;
    }
    else if(ansSelect4==allQuestions[queIndex]["ansIndex"]){
return Colors.greenAccent;
    }
    else{
      corectAns();
      return Colors.redAccent;
    }
   }

   


Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text ("QuizApp"),
    )
    ),



    body: Column(
        children:[ 
          SizedBox(
            height: 25,
          ),
          
          
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("Questions",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
            Text("${queIndex+1}/${allQuestions.length}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
          ]
        ),

        SizedBox(height: 25),

          Container(
            child: Text(allQuestions[queIndex]["question"]
            ),
          ),

        SizedBox(height: 25),

        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:selected1()), onPressed: (){setState(() {
          ansSelect1=0; selected1();
        });}, child: Text(allQuestions[queIndex]["options"][0])),
        SizedBox(height: 20),

        ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor:selected2()),onPressed: (){setState(() {
          ansSelect2=1; selected2();
        });}, child: Text(allQuestions[queIndex]["options"][1])),
        SizedBox(height: 20),

        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:selected3()), onPressed: (){setState(() {
          ansSelect3=2; selected3();
        });}, child: Text(allQuestions[queIndex]["options"][2])),
        SizedBox(height: 20),
        
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:selected4()), onPressed: (){setState(() {
          ansSelect4=3; selected4();
        });}, child: Text(allQuestions[queIndex]["options"][3])),
        SizedBox(height: 25),

        ]
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.forward_rounded), onPressed: (){
          setState(() {
            
            if (queIndex<allQuestions.length-1){
              queIndex++;
            }
            else{
              queIndex=0;
            }
            
            
            ansSelect1=-1;
            ansSelect2=-1;
            ansSelect3=-1;
            ansSelect4=-1;
          });
        }),
  );
}
}
