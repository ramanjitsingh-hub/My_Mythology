import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:my_mythology/firebase_options.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.black,
              Colors.greenAccent,
              Colors.black,
            ])),
              child: FutureBuilder(
                
                future: Firebase.initializeApp(
                    options: DefaultFirebaseOptions.currentPlatform),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.done:
                      return SingleChildScrollView(
                        child: Column(
                        
                          children: [
                            const SizedBox(
                              height: 150,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            const SizedBox(height: 80),
                            Padding(
                              padding: const EdgeInsets.only(right: 50, left: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    controller: _email,
                                    enableSuggestions: true,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        labelText: 'E-Mail',
                                        hintText: "Yourname@example.com ",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        labelStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        )),
                                  ),
                                  TextFormField(
                                    controller: _password,
                                    obscureText: true,
                                    enableSuggestions: false,
                                    autocorrect: false,
                                    decoration: const InputDecoration(
                                        labelText: 'Password',
                                        hintText: "yourpassword",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        labelStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 50),
                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black45,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () async {
                                      final email = _email.text;
                                      final password = _password.text;
                                      try {
                                        Firebase.initializeApp(
                                            options: DefaultFirebaseOptions
                                                .currentPlatform);
                                      } on FirebaseAuthException catch (e) {
                                        if (e.code == "User not found") ;
                                        {
                                          print("User not found");
                                        }
                                      }
                                      await FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                              email: email, password: password);
                                    },
                                    child: const Text("Login",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Don't Have A account? Create One",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                  Row(
                                    children:  [
                                      TextButton(
                                        onPressed: () => Navigator.of(context).pushNamed('/register/'),
                                        child: Text("Register",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15)),
                                      ),
                                      Icon(Icons.arrow_forward_ios_rounded,
                                          color: Colors.white)
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    default:
                      return Text("Loading....");
                  }
                },
              ),
            ),
          
        
      );
  
  }
}
