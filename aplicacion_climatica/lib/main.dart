import 'package:flutter/material.dart';
import 'package:aplicacion_climatica/widgets/current_weather.dart';
import 'package:aplicacion_climatica/widgets/next_days.dart';
import 'package:aplicacion_climatica/widgets/information_aditional.dart';

//screens
import 'package:aplicacion_climatica/screens/pagetwo.dart';
import 'package:aplicacion_climatica/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/segunda_pantalla': (context) => SecondPage(icon: Icons.home),
        '/tercera_pantalla': (context) => ThirdPage(),
      },
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff4286f4), Color(0xff373B44)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              'Clima',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text(
                'Menú',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text(
                'Opción 1',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/segunda_pantalla');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text(
                'Opción 2',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/segunda_pantalla');
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: const Text(
                'Opción 3',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/segunda_pantalla');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text(
                'Opción 4',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/tercera_pantalla');
              },
            ),
            ListTile(
             

              leading: Icon(Icons.search),
              title: const Text(
                'Opción 5',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/tercera_pantalla');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          
          currentWeather(Icons.cloud, '25ºC', 'Unipoli'),
          Container(
            child: Column(
              children: [
                Text(
                  'Información adicional',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Additional_information('', 'humidity', 'presure', 'feels_like'),
              ],
            ),
          ),
          SizedBox(height: 1.0),
          additionalInformationtwo('873842', '232', 'Un', 'Unip'),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera Pantalla'),
      ),
      body: const Center(
        child: Text('Esta es la tercera pantalla'),
      ),
    );
  }
}