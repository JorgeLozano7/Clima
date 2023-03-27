import 'package:flutter/material.dart';
import 'package:aplicacion_climatica/widgets/current_weather.dart';
import 'package:aplicacion_climatica/widgets/next_days.dart';
import 'package:aplicacion_climatica/widgets/information_aditional.dart';

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
      home: const HomePage(),
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
      appBar: AppBar(
        title: const Text('Mi aplicación'),
        centerTitle: true,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondPage(icon: Icons.home)),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SecondPage(icon: Icons.person)),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SecondPage(icon: Icons.shopping_cart)),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SecondPage(icon: Icons.settings)),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SecondPage(icon: Icons.search)),
                );
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
                SizedBox(height: 16.0),
                Additional_information('', 'humidity', 'presure', 'feels_like'),
              ],
            ),
          ),
          additionalInformationtwo('873842', '232', 'Un', 'Unip'),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final IconData icon;

  const SecondPage({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Segunda pantalla',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 100,
          color: Colors.white,
        ),
      ),
    );
  }
}
