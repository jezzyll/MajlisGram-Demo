// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_111/welcome.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey =GlobalKey<FormState>();
  final TextEditingController _emailController =TextEditingController();
  final TextEditingController _passController =TextEditingController();

  String _email = "";
  String _password = "";
  void _handleLogin()async{
    try{
      UserCredential userCredential = 
      await _auth.signInWithEmailAndPassword(
        email: _email,
        password: _password,
        );
        print("User Logged In : ${userCredential.user!.email}");
        Navigator.push(
                    context, MaterialPageRoute(
                      builder: (ctx){
                        return const WelcomePage();
                        }
                        )
                        );
    }catch(e){
      print("Error During logged In : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email"
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please Enter Your Email";
                  }
                  return null;
                },
                onChanged: (value){
                  setState((){ _email=value;});
                }
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: _passController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(  
                  border: OutlineInputBorder(),
                  labelText: "Password"
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please Enter Your Password";
                  }
                  return null;
                },
                onChanged: (value){
                  setState((){ _password=value;});
                }
              ),
              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: (){
                  if (_formkey.currentState!.validate()){
                    _handleLogin();
                  }

                }, child: 
                const Text("Login")
                )
            ],
            ),
            )
          ),
      ),
    );
  }
}