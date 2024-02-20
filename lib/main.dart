import 'package:flutter/material.dart';
import 'package:econear_app/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:econear_app/screens/register_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EcoNear App',
      routes: {
        "/loginScreen" : (context) => LoginScreen(),
        "/registerScreen" : (context) => RegisterScreen()
      },
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: Color(0xFFF0F4F8),
        textTheme: Theme.of(context).textTheme.apply(displayColor: Colors.black),
      ),
      home: LoginScreen(),
    );
  }
}
