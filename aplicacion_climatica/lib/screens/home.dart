import 'package:flutter/material.dart';
import 'package:clima/widgets/current_weather.dart';
import 'package:clima/widgets/next_days.dart';
import 'package:clima/widgets/information_aditional.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                image: DecorationImage(
                  image: NetworkImage('https://th.bing.com/th/id/OIP.OKlfiTpJsXjp-mb-7SkUNQHaDt?pid=ImgDet&rs=1'),
                fit: BoxFit.cover,
                ),
              ),
              child: null,
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/Home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                'Envia un comentario',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/comentarios');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text(
                'Terminos y condiciones',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/terminos');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                'SIN REDIRECCION',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ProfileScreen()));
                // Navigator.pushNamed(context, '/tercera_pantalla');
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text(
                'SIN REDIRECCION',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Navigator.pushNamed(context, '/tercera_pantalla');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            currentWeather(Icons.cloud, '25ºC', 'Unipoli'),
            Container(
              child: Column(
                children: [
                  const Text(
                    'Información adicional',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Additional_information(
                      '', 'humidity', 'presure', 'feels_like'),
                ],
              ),
            ),
            const SizedBox(height: 1.0),
            additionalInformationtwo('873842', '232', 'Un', 'Unip'),
          ],
        ),
      ),
    );
  }
}
