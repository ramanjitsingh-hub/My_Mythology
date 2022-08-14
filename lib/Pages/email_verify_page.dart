import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmailVerifyPage extends StatelessWidget {
  const EmailVerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Email_Verification Page"),
      ),
      body: Column(
        children: [
          const Text("Please Verify Email to Proceed"),
          const SizedBox(
            height: 20,
          ),
          
          TextButton(
              onPressed: () async {
                
                final user = FirebaseAuth.instance.currentUser;

                await user?.sendEmailVerification();
              },
              child: const Text("Verify Email"))
        ],
      ),
    );
  }
}
