import '../entity/weather_entity.dart';

abstract class WeatherRepositories {
  Future<WeatherEntity> fetchWeatherJson();
  Future<WeatherEntity> fetchWeatherXML();
}
