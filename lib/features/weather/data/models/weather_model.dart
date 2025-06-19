import '../../domain/entity/weather_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel extends WeatherEntity {
  WeatherModel({
    required super.cityName,
    required super.weather,
    required super.weatherDescription,
    required super.temperature,
    required super.humidity,
    required super.clouds,
  });

  factory WeatherModel.fromjson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['name'] as String,
      weather: json['weather'][0]['main'] as String,
      weatherDescription: json['weather'][0]['description'] as String,
      temperature: (json['main']['temp'] as num).toDouble(),
      humidity: json['main']['humidity'] as int,
      clouds: json['clouds']['all'] as int,
    );
  }
  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
