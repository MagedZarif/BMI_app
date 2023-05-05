
import 'package:flutter/material.dart';
import 'package:new_app/BMI_calculator.dart';
import 'package:new_app/BMIscreen.dart';
import 'package:new_app/messengerApp.dart';

void main()
{
  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BMICalculator(),
    );
  }
}