import 'package:weather_app/features/weather/data/datasource/weather_data_source.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repositories.dart';

import '../../domain/entity/weather_entity.dart';

class WeatherRepositoriesImpl implements WeatherRepositories {
  final WeatherDataSource weatherDataSource;

  WeatherRepositoriesImpl(this.weatherDataSource);

  @override
  Future<WeatherEntity> fetchWeatherJson(String cityName) async {
    return await weatherDataSource.fetchWeatherJson(cityName);
  }

  @override
  Future<WeatherEntity> fetchWeatherXml(String cityName) async {
    return await weatherDataSource.fetchWeatherXml(cityName);
  }
}
