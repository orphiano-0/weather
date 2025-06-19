import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/fetch_weather_json.dart';
import '../../domain/usecases/fetch_weather_xml.dart';
import 'weather_event.dart';
import 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final FetchWeatherJsonUsecase fetchWeatherJsonUsecase;
  final FetchWeatherXMLUsecase fetchWeatherXMLUsecase;

  WeatherBloc({
    required this.fetchWeatherJsonUsecase,
    required this.fetchWeatherXMLUsecase,
  }) : super(WeatherInitial()) {
    on<WeatherLoadedEvent>(_loadedWeatherJson);
  }

  Future<void> _loadedWeatherJson(
    WeatherLoadedEvent event,
    Emitter<WeatherState> emit,
  ) async {
    emit(WeatherLoading());

    try {
      final getWeather = await fetchWeatherJsonUsecase.call();
      emit(WeatherLoaded(getWeather));
    } catch (e) {
      emit(WeatherError(e.toString()));
    }
  }
}
