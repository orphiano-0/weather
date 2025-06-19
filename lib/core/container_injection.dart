import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import '../features/weather/data/datasource/weather_data_source.dart';
import '../features/weather/domain/usecases/fetch_weather_json.dart';
import '../features/weather/domain/usecases/fetch_weather_xml.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  await dotenv.load();

  // Bloc

  // Data
  sl.registerLazySingleton(() => WeatherDataSource(sl()));

  // Usecases
  sl.registerLazySingleton(() => FetchWeatherJsonUsecase(sl()));
  sl.registerLazySingleton(() => FetchWeatherXMLUsecase(sl()));

  // Repositories
}
