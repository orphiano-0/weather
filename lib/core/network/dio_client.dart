import 'package:dio/dio.dart';

class DioClient {
  static Dio configure() {
    return Dio(
      BaseOptions(baseUrl: "https://api.openweathermap.org/data/2.5/"),
    );
  }
}
