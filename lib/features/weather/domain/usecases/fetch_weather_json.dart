import '../entity/weather_entity.dart';
import '../repositories/weather_repositories.dart';

class FetchWeatherJsonUsecase {
  final WeatherRepositories weatherRepositories;

  FetchWeatherJsonUsecase(this.weatherRepositories);

  Future<WeatherEntity> call() async {
    return await weatherRepositories.fetchWeatherJson();
  }
}
