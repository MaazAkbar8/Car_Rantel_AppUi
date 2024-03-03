import 'package:car_rental_app/button_components.dart';
import 'package:car_rental_app/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        scaffoldBackgroundColor: const Color(0xFF363638)
      ),

      home:  Homescreen(),
        debugShowCheckedModeBanner: false,
    );
  }
}


