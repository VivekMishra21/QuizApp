import 'package:flutter/material.dart';

import 'package:quizappflutter/quizScreen.dart';




class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  double? _width;
  double? _height;




void next(){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>const QuizScreen()));
}

  @override
  Widget build(BuildContext context) {

    _height=MediaQuery.of(context).size.height;
    _width=MediaQuery.of(context).size.width;

    Container(

    );

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text("Quiz Game",style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),

     body: SingleChildScrollView(
       child: Column(
         children: [




           Padding(
             padding: const EdgeInsets.all(0.05),

               child: Padding(
                 padding: const EdgeInsets.only(bottom: 40),
                 child: Container(
                  height: _height!*0.57,

                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: Image.asset("assets/images/output.png",).image,
                       fit: BoxFit.cover,

                     ),
                     borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                     color: Colors.white
                   ),
                   child: Center(

                     child: Opacity(opacity:0.60,child: Image.asset("assets/images/quiz-logo.png",color: Colors.blue,alignment: Alignment.center,))
                   ),

                 ),
               ),
             ),
              const Center(
                child: Text("LEARN FLUTTER IN FUN WAY",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: next,style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ), child:const Row(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Icon(Icons.start,color: Colors.green,),
                  SizedBox(width: 10,),
                  Text("Start",style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),)
                ],
              ) ),
         ],
       ),

    ),
    );
  }
}
