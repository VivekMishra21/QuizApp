import 'package:flutter/material.dart';
import 'package:quizappflutter/Model/question.dart';
import 'package:quizappflutter/answer.dart';
import 'package:quizappflutter/next_button.dart';
import 'package:quizappflutter/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  int? selectedAnswerIndex;
  int questionIndex=0;
  int score=0;
 bool isLastQuestion=false;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

void pickAnswer(int value){
  setState(() {
    selectedAnswerIndex=value;
    final question=questions[0];
    isLastQuestion=questionIndex==questions.length-1;
    if(selectedAnswerIndex==question.correctAnswerIndex){
      score++;
    }
  });
}

void goToNextQuestion(){
  setState(() {
    if(questionIndex<questions.length-1){
      questionIndex++;
      selectedAnswerIndex=null;
    }
  });
}






  @override
  Widget build(BuildContext context) {
    final question=questions[questionIndex];
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Text(question.question,style: const TextStyle(
            color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
            textAlign: TextAlign.center,),

             ListView.builder(
                  shrinkWrap: true,
                  itemCount: question.options.length,
                  itemBuilder: (context,index)
              {
                return GestureDetector(
                 onTap: selectedAnswerIndex==null ? () =>
                 pickAnswer(index) : null,

                  child: AnswerCard(
                    currentIndex: index,
                    question: question.options[index],
                    isSelected: selectedAnswerIndex==index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndex ,

                  ),
                );

              },

              ),
           
             isLastQuestion
            ?Button(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> ResultScreen(score: score)));
             }, label: "Finsh")
                 : Button(onPressed: selectedAnswerIndex!=null ?goToNextQuestion :null,
                 label: "Next"),

          ],
        ),
      ),

    );
  }
}
