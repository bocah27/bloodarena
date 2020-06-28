import 'package:bloodarena/pages/sign_in.dart';
import 'package:bloodarena/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:bloodarena/pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => Welcome(),
        '/signup': (ctx) => SignUp(),
        '/signin': (ctx) => SignIn()
      },
    );
  }
}
