import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:general/lesson_09/model/weather_model.dart';
import 'package:general/lesson_09_01/utils/weather.dart';

class mainScreen extends StatefulWidget {
  final WeatherData weatherData;

  mainScreen({Key key, @required this.weatherData}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int temperature;
  Icon weatherDisplayIcon;
  AssetImage backgroundImage;

  void updateDisplayInfo(WeatherData weatherdata) {
    setState(() {
      temperature = weatherdata.currentTemperature.round();
      WeatherDisplayData weatherDisplayData =
          weatherdata.getWeatherDataDisplayData();
      backgroundImage = weatherDisplayData.weatherImage;
      weatherDisplayIcon = weatherDisplayData.weatherIcon;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateDisplayInfo(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: weatherDisplayIcon,
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
                child: Text(
              '$temperature°',
              style: TextStyle(
                color: Colors.white,
                
                fontSize: 80.0,
                letterSpacing: -5,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
