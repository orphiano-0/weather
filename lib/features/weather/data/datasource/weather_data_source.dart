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
        return WeatherModel.fromjson(response.data);

      default:
        throw FailedToFetchData();
    }
  }

  Future<WeatherModel> fetchWeatherXml(String cityName) async {
    final response = await dio.get(
      '/weather',
      queryParameters: {
        'q': cityName,
        'appid': dotenv.env['OPENWEATHER_API_KEY'],
        'mode': 'xml',
        'unit': 'metric',
      },
    );

    switch (response.statusCode) {
      case 200:
        return WeatherModel.fromXml(response.data);
      default:
        throw FailedToFetchData();
    }
  }
}
