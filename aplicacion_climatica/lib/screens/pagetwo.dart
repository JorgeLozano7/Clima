import 'package:flutter/material.dart';

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
