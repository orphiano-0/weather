import '../entity/weather_entity.dart';
import '../repositories/weather_repositories.dart';

class FetchWeatherXMLUsecase {
  final WeatherRepositories weatherRepositories;

  FetchWeatherXMLUsecase(this.weatherRepositories);

  Future<WeatherEntity> call(String cityName) async {
    return await weatherRepositories.fetchWeatherXml(cityName);
  }
}
