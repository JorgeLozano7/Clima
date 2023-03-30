import 'package:flutter/material.dart';
import 'package:aplicacion_climatica/widgets/current_weather.dart';
import 'package:aplicacion_climatica/widgets/next_days.dart';
import 'package:aplicacion_climatica/widgets/information_aditional.dart';


//screens
import 'package:aplicacion_climatica/screens/termins_and_condition.dart';
import 'package:aplicacion_climatica/screens/login.dart';
import 'package:aplicacion_climatica/screens/home.dart';
import 'package:aplicacion_climatica/screens/comentarios.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clima',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/terminos_condiciones': (context) => termins_and_condition(),
        // '/Home': (context) => HomePage(),
        '/comentarios': (context) => comentarios(),
      },
    );
  }
}

