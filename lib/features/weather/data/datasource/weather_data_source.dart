import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../core/exceptions/exceptions.dart';
import '../models/weather_model.dart';

class WeatherDataSource {
  final Dio dio;

  WeatherDataSource(this.dio);

  Future<WeatherModel> fetchWeatherJson(String cityName) async {
    final response = await dio.get(
      '/weather',
      queryParameters: {
        'q': cityName,
        'appid': dotenv.env['OPENWEATHER_API_KEY'],
        'units': 'metric',
      },
    );

    switch (response.statusCode) {
      case 200:
        final weatherData = response.data;

        final weatherModel = WeatherModel(
          cityName: weatherData['name'],
          weather: weatherData['weather'][0]['main'],
          weatherDescription: weatherData['weather'][0]['description'],
          temperature: (weatherData['main']['temp'] as num).toDouble(),
          humidity: weatherData['main']['humidity'],
          clouds: weatherData['clouds']['all'],
        );
        return weatherModel;

      default:
        throw FailedToFetchData();
    }
  }

  Future<WeatherModel> fetchWeatherXml(String cityName) async {
    throw FailedToFetchData();
  }
}
