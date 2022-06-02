import 'dart:ui';

import "package:flutter/material.dart";

void main() {
  runApp(LoginPage(
    
  ));
  
  
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Colors.black,
            Colors.greenAccent,
            Colors.black,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 50,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
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
                      decoration: InputDecoration(
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
              SizedBox(height: 50),
              Container(
                height: 50,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Don't Have A account? Create One",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Row(
                      children: [
                        Text("Sign Up",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.white)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
