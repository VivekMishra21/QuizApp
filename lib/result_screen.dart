import 'package:flutter/material.dart';
import 'package:quizappflutter/next_button.dart';
import 'package:quizappflutter/quizScreen.dart';
import 'package:quizappflutter/Model/question.dart';



class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key,required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepPurple.shade900,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150,),
            const Text("Your Score : ",style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 150,),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: CircularProgressIndicator(
                    strokeWidth: 12,
                    value: score/10,
                    color: Colors.lightGreen,

                  ),
                ),
                Column(
                  children: [
                    Text(score.toString() + "/10",
                    style: const TextStyle(
                      fontSize: 80,
                      color: Colors.white
                    ),),
                    const SizedBox(height: 10,),
                    Text("${(score/questions.length*100).round()}%",
                    style: const TextStyle(fontSize: 30,color: Colors.white),),

                  ],
                ),
              ],
            ),
            const SizedBox(height: 150,),
            Button(onPressed: (){
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const QuizScreen(),
                  ),
              );
            } ,
            label: "Restart",
            )
          ],
        ),
      ),
    );
  }
}
