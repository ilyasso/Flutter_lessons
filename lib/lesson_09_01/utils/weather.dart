import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:general/lesson_09_01/utils/location.dart';
import 'package:http/http.dart';

const apiKey = "d2b27bd13ce0e39a108c224644eb9552";

class WeatherDisplayData {
  Icon weatherIcon;
  AssetImage weatherImage;

  WeatherDisplayData({@required this.weatherIcon, this.weatherImage});
}

class WeatherData {
  WeatherData({@required this.locationData});
  LocationHelper locationData;
  double currentTemperature;
  int currentCondition;

  Future<void> getCurrentTemperature() async {
    Response response = await get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=${locationData.latitude}&lon=${locationData.longitude}&appid=${apiKey}&units=metric'));
    print(response.statusCode == 200);
    if (response.statusCode == 200) {
      String data = response.body;

      var currentWeather = jsonDecode(data);
      try {
        currentTemperature = currentWeather['main']['temp'];
        currentCondition = currentWeather['weather'][0]['id'];
        print(currentCondition);
        print(currentTemperature);
      } catch (e) {
        print(e);
        print('yeeees');
      }
    } else {
      print('apiden kelbei jatat');
    }
  }

  WeatherDisplayData getWeatherDataDisplayData() {
    if (currentCondition < 600) {
      return WeatherDisplayData(
          weatherIcon: const Icon(
            FontAwesomeIcons.cloud,
            size: 75.0,
            color: Colors.white,
          ),
          weatherImage: const AssetImage('assets/images/cloudy.jpg'));
    } else {
      var now = DateTime.now();
      if (now.hour >= 19) {
        return WeatherDisplayData(
            weatherIcon: const Icon(
              FontAwesomeIcons.moon,
              size: 75.0,
              color: Colors.white,
            ),
            weatherImage: const AssetImage('assets/images/moon.jpg'));
      } else {
        return WeatherDisplayData(
            weatherIcon: const Icon(
              FontAwesomeIcons.sun,
              size: 75.0,
              color: Colors.white,
            ),
            weatherImage: const AssetImage('assets/images/sunny.jpg'));
      }
    }
  }
}
