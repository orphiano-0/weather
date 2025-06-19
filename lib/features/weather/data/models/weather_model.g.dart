// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
  cityName: json['cityName'] as String,
  weather: json['weather'] as String,
  weatherDescription: json['weatherDescription'] as String,
  temperature: (json['temperature'] as num).toDouble(),
  humidity: (json['humidity'] as num).toInt(),
  clouds: (json['clouds'] as num).toInt(),
);

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'weather': instance.weather,
      'weatherDescription': instance.weatherDescription,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'clouds': instance.clouds,
    };
