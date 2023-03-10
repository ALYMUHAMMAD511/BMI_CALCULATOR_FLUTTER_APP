import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget
{
  final int result;
  final bool IsMale;
  final int age;

  BmiResultScreen(
      {
        required this.result,
        required this.IsMale,
        required this.age,
      });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI RESULT',
        ),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
          onPressed: ()
          {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              'Gender : ${IsMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}