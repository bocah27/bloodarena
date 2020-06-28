import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:bloodarena/pages/welcome.dart';
import 'package:bloodarena/pages/sign_in.dart';
import 'package:bloodarena/pages/sign_up.dart';
import 'package:bloodarena/pages/home.dart';

import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (ctx) => FirebaseAuthNavigator(),
        '/welcome': (ctx) => Welcome(),
        '/signup': (ctx) => SignUp(),
        '/signin': (ctx) => SignIn(),
        '/home': (ctx) => Home()
      },
    );
  }
}

class FirebaseAuthNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          FirebaseUser user = snapshot.data;
          return user == null ? Welcome() : Home();
        } else {
          return Scaffold(
            body: Center(
              child: SpinKitFadingCube(color: Colors.red),
            ),
          );
        }
      },
    );
  }
}
