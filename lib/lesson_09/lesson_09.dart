import 'package:flutter/material.dart';
import 'package:general/lesson_09/model/weather_model.dart';
import 'package:general/lesson_09/services/weather_api_client.dart';
import 'package:general/lesson_09/views/additional_information.dart';
import 'package:general/lesson_09/views/current_weather.dart';
import 'package:general/lesson_09_01/utils/weather.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherHomeScreen(),
    );
  }
}

class WeatherHomeScreen extends StatefulWidget {
  const WeatherHomeScreen({Key key}) : super(key: key);

  @override
  State<WeatherHomeScreen> createState() => _WeatherHomeScreenState();
}

class _WeatherHomeScreenState extends State<WeatherHomeScreen> {
  WeatherApiClient client = WeatherApiClient();
  Weather data;
  String _city = 'Bishkek';
  Future<void> GetData() async {
    data = await client.getCurrentWeather('$_city');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      appBar: AppBar(
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0.0,
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: FutureBuilder(
        future: GetData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentWeather(Icons.wb_sunny_rounded, "${data.temp}°",
                    "${data.cityName}"),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Кошумча маалымат',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xdd212121),
                      fontWeight: FontWeight.bold),
                ),
                Divider(),
                SizedBox(
                  height: 20.0,
                ),
                AdditionalInformation('${data.wind}', '${data.humidity}',
                    '${data.pressure}', '${data.feels_like}'),
                SizedBox(
                  height: 20.0,
                ),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
