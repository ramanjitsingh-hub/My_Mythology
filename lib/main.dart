import 'package:flutter/material.dart';
import 'package:my_mythology/Pages/home_page.dart';
import 'package:my_mythology/Pages/login_page.dart';
import 'package:my_mythology/Pages/registeration_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      routes: {
        '/login/' :(context)=> LoginPage(),
        '/register/':(context) => RegisterationPage(),
      },
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
