

import 'dart:math';

import 'package:flutter/material.dart';

import 'result.dart';


class Bmi_screen extends StatefulWidget
{
  const Bmi_screen({super.key});




  @override
  State<Bmi_screen> createState() => _Bmi_screenState();
}

class _Bmi_screenState extends State<Bmi_screen> {
  bool isMale=true;
  double height=120;
  int age=20;
  int weight=40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("BMI Calculator",
          style: TextStyle(
              color: Colors.deepPurpleAccent
          ),
        ),
      ),

      body:  Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState((){
                          isMale=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ?  Colors.blueAccent : Colors.grey,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(
                                child: Image(
                                  image: AssetImage("assets/male.png"),
                                  height: 90,
                                  width: 90,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),


                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState((){
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ! isMale ? Colors.blueAccent : Colors.grey
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: const [
                              Expanded(
                                child: Image(image: AssetImage("assets/female.png"),
                                  height: 90,
                                  width: 90,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),


                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),


                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,

                      children: [
                        Text("${height.round()}",
                          style: const TextStyle(
                            color: Colors.purple,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text("cm",
                          style: TextStyle(
                              color: Colors.purple
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: Colors.purple,
                      inactiveColor: Colors.purple[300],
                      value:height,
                      max: 220,
                      min: 70,
                      onChanged: (value){
                        setState(
                                (){
                              height=value;
                            }
                        );

                      },

                    )

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHR",
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,

                            ),
                          ),
                          Text("$weight",
                            style: const TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.purple,
                                onPressed: () {
                                  setState(
                                          (){
                                        weight--;
                                      }
                                  );
                                },
                                heroTag: 'weight-',
                                mini: true,
                                child: const Icon(Icons.remove,
                                  color: Colors.deepPurpleAccent,),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.purple,

                                onPressed: () {
                                  setState(
                                          (){
                                        weight++;
                                      }
                                  );

                                },
                                heroTag: 'weight+',
                                mini: true,
                                child: const Icon(
                                    color:Colors.deepPurpleAccent,
                                    Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "AGE",
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,

                            ),
                          ),
                          Text("$age",
                            style: const TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.purple,
                                onPressed: () {
                                  setState(
                                          (){
                                        age--;
                                      }
                                  );
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: const Icon(Icons.remove,
                                  color: Colors.deepPurpleAccent,),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.purple,
                                onPressed: () {
                                  setState(
                                          (){
                                        age++;
                                      }
                                  );
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: const Icon(Icons.add,
                                  color: Colors.deepPurpleAccent,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.purple,
            child: MaterialButton(onPressed: ()
            {
              double result = weight /pow(height/ 100,2);
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Result(
                Age: age,
                isMale:isMale,
                result: result.round(),
              ),
              ),);
            },
              height: 51,
              child: const Text("calculate",
                style: TextStyle(
                    color: Colors.deepPurpleAccent
                ),

              ),


            ),
          ),

        ],
      ),
    );
  }
}