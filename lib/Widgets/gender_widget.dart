import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenderWidget extends StatelessWidget { 
GenderWidget({ required this.gender, required this.genderIcon});
String gender; 
IconData genderIcon; 
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              genderIcon,
              color: Colors.white,
              size: 80,
            ),
            Text(
              gender,
              style: TextStyle(fontSize: 16, color: Colors.white70),
            )
          ],
        ));
  }
}
