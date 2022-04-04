import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:general/lesson_09_01/screens/mainScreen.dart';
import 'package:general/lesson_09_01/utils/location.dart';
import 'package:general/lesson_09_01/utils/weather.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  LocationHelper locationData;

  Future<void> getLocationData() async {
    locationData = LocationHelper();
    print("$locationData");
    await locationData.getCurrentLocation();

    if (locationData.latitude == null || locationData.longitude == null) {
      print('konum gelimiyour');
    } else {
      print('kojum geliyor' + locationData.latitude.toString());
      print('object' + locationData.longitude.toString());
    }
  }

  void getWeatherData() async {
    await getLocationData();

    WeatherData weatherdata = WeatherData(locationData: locationData);
    await weatherdata.getCurrentTemperature();
    if (weatherdata.currentTemperature == null ||
        weatherdata.currentCondition == null) {
      print('apiden bosh gelip jata');
    }
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return MainScreen(
        weatherData: weatherdata,
      );
    }));
  }

  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [Colors.purple, Colors.blue],
          ),
        ),
        child: Center(
          child: SpinKitFadingCircle(
            color: Colors.white,
            size: 50.0,
            duration: Duration(milliseconds: 1200),
          ),
        ),
      ),
    );
  }
}
