import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:general/lesson_09/model/weather_model.dart';
import 'package:general/lesson_09_01/screens/mainScreen.dart';
import 'package:general/lesson_09_01/utils/location.dart';
import 'package:general/lesson_09_01/utils/weather.dart';
import 'package:get/route_manager.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({Key key}) : super(key: key);

  @override
  State<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  LocationHelper locationData;
  Future<void> GetLocationData() async {
    locationData = LocationHelper();
    await locationData.getCurrentLocation();

    if (locationData.latitide == null || locationData.longitude == null) {
      print('konum gelimiyour');
    } else {
      print('kojum geliyor' + locationData.latitide.toString());
      print('object' + locationData.longitude.toString());
    }
  }

  void getWeatherData() async {
    await GetLocationData();

    WeatherData weatherdata = WeatherData(locationData: locationData);
    await weatherdata.getCurrentTemperature();
    if (weatherdata.getCurrentTemperature() == null ||
        weatherdata.currentCondition == null) {
      print('apiden bos gelip jata');
    }
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return mainScreen(
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
