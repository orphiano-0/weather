import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/core/network/dio_client.dart';
import 'package:weather_app/features/weather/data/repositories/weather_repositories_impl.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repositories.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_bloc.dart';

import '../features/weather/data/datasource/weather_data_source.dart';
import '../features/weather/domain/usecases/fetch_weather_json.dart';
import '../features/weather/domain/usecases/fetch_weather_xml.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  await dotenv.load();

  // Bloc
  sl.registerFactory(
    () => WeatherBloc(
      fetchWeatherJsonUsecase: sl(),
      fetchWeatherXMLUsecase: sl(),
    ),
  );

  // Data
  sl.registerLazySingleton(() => WeatherDataSource(sl()));

  // Usecases
  sl.registerLazySingleton(() => FetchWeatherJsonUsecase(sl()));
  sl.registerLazySingleton(() => FetchWeatherXMLUsecase(sl()));

  // Repositories
  sl.registerLazySingleton<WeatherRepositories>(
    () => WeatherRepositoriesImpl(sl()),
  );

  // Client
  sl.registerLazySingleton<Dio>(() => DioClient.configure());
}
