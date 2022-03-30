class Weather {
  String cityName;
  double temp;
  double wind;
  double humidity;
  double feels_like;
  int pressure;

  Weather({
    this.cityName,
    this.feels_like,
    this.humidity,
    this.pressure,
    this.temp,
    this.wind,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
  }
}
