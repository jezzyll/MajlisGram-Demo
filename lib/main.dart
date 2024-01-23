import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_111/firebase_options.dart';
import 'package:flutter_application_111/home_screen.dart';
import 'package:flutter_application_111/signin_screen.dart';
import 'package:flutter_application_111/signup_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/signup': (context) => const SignUpScreen(), // Create SignUpPage separately
        '/signin': (context) => const LoginScreen(), // Create SignInPage separately
      },
    );
  }
}


  

