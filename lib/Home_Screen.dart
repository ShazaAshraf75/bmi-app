import 'dart:math';

import 'package:bmi_app/result_screen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int aCounter = 20;
  int wCounter = 60;
  double rating = 120;
  bool isFemale = true;
  double myBMI = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: !isFemale
                                  ? Colors.red[900]
                                  : Colors.grey[800],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color:
                                  isFemale ? Colors.red[900] : Colors.grey[800],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hieght",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "$rating",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: rating,
                      onChanged: (newRating) {
                        setState(() => rating = newRating.roundToDouble());
                      },
                      min: 100,
                      max: 200,
                      label: "$rating",
                      activeColor: Colors.red[900],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                              Text(
                                "$wCounter",
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      splashColor: Colors.red[900],
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                      mini: true,
                                      backgroundColor: Colors.grey[600],
                                      onPressed: () {
                                        setState(() {
                                          wCounter--;
                                        });
                                      }),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  FloatingActionButton(
                                      splashColor: Colors.red[900],
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      mini: true,
                                      backgroundColor: Colors.grey[600],
                                      onPressed: () {
                                        setState(() {
                                          wCounter++;
                                        });
                                      }),
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                              Text(
                                "$aCounter",
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      splashColor: Colors.red[900],
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                      mini: true,
                                      backgroundColor: Colors.grey[600],
                                      onPressed: () {
                                        setState(() {
                                          aCounter--;
                                        });
                                      }),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  FloatingActionButton(
                                      splashColor: Colors.red[900],
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      mini: true,
                                      backgroundColor: Colors.grey[600],
                                      onPressed: () {
                                        setState(() {
                                          aCounter++;
                                        });
                                      }),
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: MaterialButton(
                    onPressed: () {
                      var myBMI = wCounter / pow(rating / 100, 2);
                      myBMI.round();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                  age: aCounter,
                                  hieght: rating,
                                  weight: wCounter,
                                  isFemale: isFemale,
                                  myBMI: myBMI)));
                    },
                    child: Text("Calculate",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )))),
          ),
        ],
      ),
    );
  }
}
