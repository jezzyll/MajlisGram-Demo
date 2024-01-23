import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_111/signin_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    String? email = _auth.currentUser!.email;
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"),),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Logged In with: $email"),
            const SizedBox(height: 50,),
             ElevatedButton(
                onPressed: (){
                  _auth.signOut();
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (ctx){
                        return const LoginScreen();
                        }
                        )
                        );

                }, child: const Text("Sign Out"),
                
                )
          ],
        ),),
        
      ),
    );
  }
}