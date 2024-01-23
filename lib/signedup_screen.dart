import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_111/signin_screen.dart';

class SignedUpScreen extends StatefulWidget {
  const SignedUpScreen({super.key});

  @override
  State<SignedUpScreen> createState() => _SignedUpScreenState();
}

class _SignedUpScreenState extends State<SignedUpScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
     String? email = _auth.currentUser!.email;
    return Scaffold(
      appBar: AppBar(
        title: const Text("You Are In"),
      ),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Registered Successfully with: $email"),
            const SizedBox(height: 50,),
             ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (ctx){
                        return const LoginScreen();
                        }
                        )
                        );

                }, child: const Text("Sign In"),
                
                )
          ],
        ),),
        
      ),
    );
  }
}