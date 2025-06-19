class WeatherEntity {
  final String cityName;
  final String weather;
  final String weatherDescription;
  final double temperature;
  final int humidity;
  final int clouds;

  WeatherEntity({
    required this.cityName,
    required this.weather,
    required this.weatherDescription,
    required this.temperature,
    required this.humidity,
    required this.clouds,
  });
}
