import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/constants/constants.dart';
import 'package:weather_app/features/weather/domain/entity/weather_entity.dart';

class WeatherCard extends StatelessWidget {
  final WeatherEntity weather;
  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(weather.cityName, style: kTitleText),
          const SizedBox(height: 10),
          Image.asset('assets/images/windy.png', height: 150),
          const SizedBox(height: 15),
          Text(weather.weather, style: kWeatherText),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/humidity.svg',
                    height: 25,
                    colorFilter: kIconColor,
                  ),
                  Text('Humidity', style: kDefaultText),
                  Text('${weather.humidity}%', style: kDefaultText),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/temperature.svg',
                    height: 25,
                    colorFilter: kIconColor,
                  ),
                  Text('Temperature', style: kDefaultText),
                  Text('${weather.temperature}°c', style: kDefaultText),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/cloud.svg',
                    height: 25,
                    colorFilter: kIconColor,
                  ),
                  Text('Clouds', style: kDefaultText),
                  Text('${weather.clouds}%', style: kDefaultText),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
