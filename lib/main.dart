import 'package:flutter/material.dart';
import 'package:my_mythology/Pages/on_boarding_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[350],
          
          
          
        ),
        home:const Scaffold(
          body: Onboarding_Screen(),
        ),
    );
  }
}
