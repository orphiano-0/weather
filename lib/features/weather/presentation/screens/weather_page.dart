import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/exceptions/error_page.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_event.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_state.dart';
import 'package:weather_app/features/weather/presentation/widgets/weather_card.dart';
import 'package:weather_app/features/weather/presentation/widgets/weather_search.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final TextEditingController _searchCity = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<WeatherBloc>().add(WeatherJsonLoadedEvent('Manila'));
  }

  void _searchWeather() {
    final city = _searchCity.text.trim();
    if (city.isNotEmpty) {
      context.read<WeatherBloc>().add(WeatherJsonLoadedEvent(city));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: WeatherSearch(
                    controller: _searchCity,
                    onSearch: _searchWeather,
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<WeatherBloc, WeatherState>(
                  builder: (context, state) {
                    if (state is WeatherLoading) {
                      return const CircularProgressIndicator();
                    } else if (state is WeatherLoaded) {
                      return WeatherCard(weather: state.weather);
                    } else if (state is WeatherError) {
                      return ErrorPage();
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
