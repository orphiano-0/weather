abstract class WeatherEvent {}

class WeatherJsonLoadedEvent extends WeatherEvent {
  final String cityName;

  WeatherJsonLoadedEvent(this.cityName);
}

class WeatherXmlLoadedEvent extends WeatherEvent {
  final String cityName;

  WeatherXmlLoadedEvent(this.cityName);
}
