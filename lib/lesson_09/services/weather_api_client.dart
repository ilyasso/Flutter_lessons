import 'dart:convert';

import 'package:general/lesson_09/model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<Weather> getCurrentWeather(String location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=d2b27bd13ce0e39a108c224644eb9552&units=metric");

    var response = await http.get(endpoint);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print(body);
      try {
        print(Weather.fromJson(body).cityName);
        return Weather.fromJson(body);
      } catch (e) {
        print(e);
      }
    } else {
      print('apiden kelbei jatat');
    }
  }
}
