import '../entity/weather_entity.dart';

abstract class WeatherRepositories {
  Future<WeatherEntity> fetchWeatherJson(String cityName);
  Future<WeatherEntity> fetchWeatherXml(String cityName);
}
