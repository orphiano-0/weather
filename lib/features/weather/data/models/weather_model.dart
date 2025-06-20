import 'package:xml/xml.dart';

import '../../domain/entity/weather_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';
part 'weather_model.xml.dart';

@JsonSerializable()
class WeatherModel extends WeatherEntity {
  WeatherModel({
    required super.cityName,
    required super.weather,
    required super.temperature,
    required super.humidity,
    required super.clouds,
  });

  factory WeatherModel.fromjson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  factory WeatherModel.fromXml(XmlElement xml) => _$WeatherModelFromXml(xml);

  // Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
