import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:clima/screens/login.dart';
import 'package:clima/screens/home.dart';
import 'package:clima/screens/comentarios.dart';
import 'package:clima/screens/termins_and_condition.dart';
import 'package:clima/screens/register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Clima',
             home: login(),
            routes: {
               '/Home': (context) => HomePage(),
              '/comentarios': (context) => comentarios(),
              '/terminos': (context) => termins_and_condition(),
              '/register': (context) => Register()
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
