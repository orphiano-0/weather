// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// was modified based on openweather api json format
WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
  cityName: json['name'] as String,
  weather: json['weather'][0]['main'] as String,
  temperature: (json['main']['temp'] as num).toDouble(),
  humidity: json['main']['humidity'] as int,
  clouds: json['clouds']['all'] as int,
);

// Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
//     <String, dynamic>{
//       'cityName': instance.cityName,
//       'weather': instance.weather,
//       'temperature': instance.temperature,
//       'humidity': instance.humidity,
//       'clouds': instance.clouds,
//     };
