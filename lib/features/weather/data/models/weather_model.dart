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
    required super.feelsLike,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return _$WeatherModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
