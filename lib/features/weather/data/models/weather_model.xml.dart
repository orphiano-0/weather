part of 'weather_model.dart';

WeatherModel _$WeatherModelFromXml(XmlElement xml) {
  final cityName = xml.getElement('city')?.getAttribute('name') ?? 'Unknown';

  final weatherElement = xml.getElement('weather');
  final weather = weatherElement?.getAttribute('value') ?? 'Unknown';

  final tempElement = xml.getElement('temperature');
  final temperature =
      double.tryParse(tempElement?.getAttribute('value') ?? '0') ?? 0;

  final humidElement = xml.getElement('humidity');
  final humidity =
      int.tryParse(humidElement?.getAttribute('value') ?? '0') ?? 0;

  final cloudElement = xml.getElement('clouds');
  final clouds = int.tryParse(cloudElement?.getAttribute('value') ?? '0') ?? 0;

  return WeatherModel(
    cityName: cityName,
    weather: weather,
    temperature: temperature,
    humidity: humidity,
    clouds: clouds,
  );
}
