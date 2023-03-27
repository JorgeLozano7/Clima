import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

TextStyle InfoFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget additionalInformationtwo(
    String wind, String humidity, String pressure, String feels_like) {
  return Center(
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 1.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Clima para los siguientes dias",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue.shade700,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
             Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "DIA",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Text("Lunes"),
          const SizedBox(height: 10.0),
          Text("Martes"),
          const SizedBox(height: 10.0),
          Text("Miércoles"),
          const SizedBox(height: 10.0),
          Text("Jueves"),
          const SizedBox(height: 10.0),
          Text("Viernes"),
          const SizedBox(height: 10.0),
          Text("Sábado"),
          const SizedBox(height: 10.0),
          Text("Domingo"),
        ],
      ),
    ),
    const SizedBox(width: 20.0),
    Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "CLIMA",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Text("Wind"),
          const SizedBox(height: 10.0),
          Text("humidity"),
          const SizedBox(height: 10.0),
          Text("Pressure"),
          const SizedBox(height: 10.0),
          Text("Feels Like"),
          const SizedBox(height: 10.0),
          Text("-",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10.0),
          Text("-",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10.0),
          Text("-",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    ),
    const SizedBox(width: 20.0),
    Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "DATO",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Text("Wind"),
          const SizedBox(height: 10.0),
          Text("humidity"),
          const SizedBox(height: 10.0),
          Text("Pressure"),
          const SizedBox(height: 10.0),
          Text("Feels Like"),
          const SizedBox(height: 10.0),
          Text("-",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10.0),
          Text("-",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10.0),
          Text("-",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  ],
),

              ],
            ),
          ],
        ),
      ),
    ),
  );
}
