part of 'weather_model.dart';

WeatherModel _$WeatherModelFromXml(XmlElement xml) {
  final current = xml.getElement('current');

  final cityName =
      current?.getElement('city')?.getAttribute('name') ?? 'Unknown';

  final weatherElement = current?.getElement('weather');
  final weather = weatherElement?.getAttribute('value') ?? 'Unknown';

  final tempElement = current?.getElement('temperature');
  final temperature =
      double.tryParse(tempElement?.getAttribute('value') ?? '0') ?? 0;

  final humidElement = current?.getElement('humidity');
  final humidity =
      int.tryParse(humidElement?.getAttribute('value') ?? '0') ?? 0;

  final cloudElement = current?.getElement('clouds');
  final clouds = int.tryParse(cloudElement?.getAttribute('value') ?? '0') ?? 0;

  return WeatherModel(
    cityName: cityName,
    weather: weather,
    temperature: temperature,
    humidity: humidity,
    clouds: clouds,
  );
}
