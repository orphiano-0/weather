import '../entity/weather_entity.dart';
import '../repositories/weather_repositories.dart';

class FetchWeatherJsonUsecase {
  final WeatherRepositories weatherRepositories;

  FetchWeatherJsonUsecase(this.weatherRepositories);

  Future<WeatherEntity> call(String cityName) async {
    return await weatherRepositories.fetchWeatherJson(cityName);
  }
}
