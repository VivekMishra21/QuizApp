import 'package:flutter/material.dart';
import 'package:quizappflutter/Model/question.dart';



class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
  required this.question,
  required this.isSelected,
  required this.currentIndex,
  required this.correctAnswerIndex,
  required this.selectedAnswerIndex
  });


  final String question;
  final bool isSelected;
  final int currentIndex;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;


  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(17.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26),
          border: Border.all(
            width: 2,
            color: isSelected
                ? isCorrectAnswer
                ? Colors.green
                : isWrongAnswer
                ? Colors.red
                : Colors.white
                : Colors.white,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                question,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Changed text color to black for better visibility
                ),
              ),
            ),
            const SizedBox(width: 10),
            if (isSelected && (isCorrectAnswer || isWrongAnswer))
              isCorrectAnswer
                  ? buildCorrectIcon()
                  : isWrongAnswer
                  ? buildWrongIcon()
                  : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }


}
Widget buildCorrectIcon()=> const CircleAvatar(
  radius: 15,
  backgroundColor: Colors.green,
  child: Icon(Icons.check,color: Colors.white,),
);

Widget buildWrongIcon()=> const CircleAvatar(
  radius: 15,
  backgroundColor: Colors.red,
  child: Icon(Icons.close,color: Colors.white,),
);