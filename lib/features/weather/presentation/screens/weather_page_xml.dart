import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/features/weather/presentation/widgets/weather_card.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/exceptions/error_page.dart';
import '../../../../core/widgets/app_drawer.dart';
import '../bloc/weather_bloc.dart';
import '../bloc/weather_event.dart';
import '../bloc/weather_state.dart';
import '../widgets/weather_search.dart';

class WeatherPageXml extends StatefulWidget {
  const WeatherPageXml({super.key});

  @override
  State<WeatherPageXml> createState() => _WeatherPageXmlState();
}

class _WeatherPageXmlState extends State<WeatherPageXml> {
  final TextEditingController _searchCity = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<WeatherBloc>().add(WeatherXmlLoadedEvent('Manila'));
  }

  void _searchWeather() {
    final city = _searchCity.text.trim();
    if (city.isNotEmpty) {
      context.read<WeatherBloc>().add(WeatherXmlLoadedEvent(city));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('From XML', style: kTitleText),
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset(
              'assets/icons/burger.svg',
              width: 25,
              colorFilter: kNavColor,
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
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
    );
  }
}
