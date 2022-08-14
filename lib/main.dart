import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_mythology/Pages/home_page.dart';
import 'package:my_mythology/Pages/login_page.dart';
import 'package:my_mythology/Pages/registeration_page.dart';
import 'package:my_mythology/Pages/tiles_view.dart';

import 'Pages/email_verify_page.dart';
import 'firebase_options.dart';

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
        '/login/': (context) => LoginPage(),
        '/register/': (context) => RegisterationPage(),
      },
      home: Scaffold(
        body: Container(
            child: FutureBuilder(
                future: Firebase.initializeApp(
                    options: DefaultFirebaseOptions.currentPlatform),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.done:
                      final user = FirebaseAuth.instance.currentUser;
                      if (user != null) {
                        if (user.emailVerified) {
                          return const TilesView();
                        } else {
                          return const EmailVerifyPage();
                        }
                      } else {
                        return const LoginPage();
                      }
                      
                    default:
                      return const CircularProgressIndicator();
                  }
                })),
      ),
    );
  }
}
