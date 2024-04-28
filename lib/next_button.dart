import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key,required this.onPressed,required this.label});

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return
       TextButton(onPressed: onPressed, child:
      SizedBox(
        height: 50,
        width: double.infinity,


        child: Card(
          color: onPressed !=null ? Colors.orange : Colors.orange,
          child: Center(
            child: Text(
              label,
              style: TextStyle(

              letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ),
          ),
        )



        ),

      );


  }
}
