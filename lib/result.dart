import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int result;
  final bool isMale;
  final int Age;
  const Result({super.key,
    required this.result,
    required this.Age,
    required this.isMale,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("BMI Result",
          style: TextStyle(
              color: Colors.deepPurpleAccent
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Text(
              "Gender: ${isMale ? "Male" : "Fimale"}",
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Result:$result" ,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Age:$Age",
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],

        ),
      ),
    );

  }

}