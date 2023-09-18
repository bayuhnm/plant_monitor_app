// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'loading_screen.dart';
import '../provider/data_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 60,
                child: Image.asset('assets/Logo.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 165,
                      width: MediaQuery.of(context).size.width * 3/7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17),
                            child: Align(
                                alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.water_rounded,
                                  size: 40,
                                  color: Colors.green[800],),
                                  Text("  TDS",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "1219",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 17, right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "ppm",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 165,
                      width: MediaQuery.of(context).size.width * 3/7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17),
                            child: Align(
                                alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.water_drop_outlined,
                                  size: 40,
                                  color: Colors.blue[400],),
                                  Text("  DO",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "7.14",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 17, right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "mg/L",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 165,
                      width: MediaQuery.of(context).size.width * 3/7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17),
                            child: Align(
                                alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.sunny_snowing,
                                  size: 40,
                                  color: Colors.yellow[700],),
                                  Text("  Humidity",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "92",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 17, right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "%",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 165,
                      width: MediaQuery.of(context).size.width * 3/7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17),
                            child: Align(
                                alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.wb_sunny_outlined,
                                  size: 40,
                                  color: Colors.red[400],),
                                  Text("  Room Temp",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "30.02",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 17, right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "°C",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 165,
                      width: MediaQuery.of(context).size.width * 3/7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17),
                            child: Align(
                                alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.thermostat_sharp,
                                  size: 40,
                                  color: Colors.indigoAccent[200],),
                                  Text("  Water Temp",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "29.14",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 17, right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "°C",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 165,
                      width: MediaQuery.of(context).size.width * 3/7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17),
                            child: Align(
                                alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Icon(Icons.water_damage_outlined,
                                  size: 40,
                                  color: Colors.purple[400],),
                                  Text("  PH",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "5.72",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 17, right: 17),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "pH",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future getCurrentData() async {
  Sensor _sensor;
  try {
    var url = Uri.parse('http://mojar.sks-pens.site/');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      _sensor = Sensor.fromJson(jsonDecode(response.body));
      return _sensor;
    }
  } catch (e) {
    log(e.toString());
  }
}
