import 'package:flutter/material.dart';

TextStyle titleFont = TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0);

TextStyle InfoFont = TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0);

Widget Additional_information(
    String wind, String humidity, String presure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                  colors: [Color(0xff4286f4), Color(0xff373B44)
          ]),
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
              SizedBox(height: 18.0),
              Text(
                "DATO 1",
                style: titleFont.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.0),
              Text(
                "$wind",
                style: InfoFont.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        //PRESURE
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                   gradient: LinearGradient(
                  colors: [Color(0xff4286f4), Color(0xff373B44)

          ]),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.cloud,
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                    SizedBox(height: 18.0),
                    Text(
                      "DATO 2",
                      style: titleFont.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "$presure",
                      style: InfoFont.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ]),

        //HUMIDITY

        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Color(0xff4286f4), Color(0xff373B44)

          ]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.cloud_circle_sharp,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ),
                      SizedBox(height: 18.0),
                      Text(
                        "DATO 3",
                        style: titleFont.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "$humidity",
                        style: InfoFont.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ))
            ]),

        //Feels Like

        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Color(0xff4286f4), Color(0xff373B44)

          ]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.water_sharp,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ),
                      SizedBox(height: 18.0),
                      Text(
                        "DATO 4",
                        style: titleFont.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "$humidity",
                        style: InfoFont.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ))
            ]),
      ],
    ),
  );
}
