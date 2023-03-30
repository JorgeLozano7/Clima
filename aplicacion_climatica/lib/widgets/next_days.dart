import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

TextStyle infoFont =
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 1.0),
          Text(
            "Clima para los siguientes días",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.center, // Se agrega este atributo para alinear los elementos en el centro
  children: [
    Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "DÍA",
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
    Flexible(
      flex: 2,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.wb_sunny, color: Colors.orange, size: 10),
              const SizedBox(width: 5.0),
              Text('78%'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.wb_cloudy, color: Colors.blue, size: 10),
              const SizedBox(width: 5.0),
              Text('78%'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.cloud, color: Colors.grey, size: 10),
              const SizedBox(width: 5.0),
              Text('78%'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit, color: Colors.blue, size: 10),
              const SizedBox(width: 5.0),
              Text('78%'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit, color: Colors.blue, size: 10),
              const SizedBox(width: 5.0),
              Text('78%'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit, color: Colors.blue, size: 10),
              const SizedBox(width: 5.0),
              Text('78%'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit, color: Colors.blue, size: 10),
              const SizedBox(width: 5.0),
              Text('78%'),
            ],
          ),
        ],
      ),
    ),
    const SizedBox(width: 20.0),
    Flexible(
      flex: 1,
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
          Text("32°C"),
          const SizedBox(height: 10.0),
          Text("75%"),
          const SizedBox(height: 10.0),
      Text("1013hPa"),
      const SizedBox(height: 10.0),
      Text("20°C"),
      const SizedBox(height: 10.0),
      Text("22°C"),
      const SizedBox(height: 10.0),
      Text("23°C"),
      const SizedBox(height: 10.0),
      Text("25°C"),
    ],
  ),
),
],
),
        ],
      ),
    ),
  );
}
