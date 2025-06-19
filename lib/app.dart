import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/weather/presentation/screens/weather_page.dart';

import 'core/container_injection.dart';
import 'features/weather/presentation/bloc/weather_bloc.dart';

Future<void> initializeApp() async {
  await initDependencies();
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (_) => sl<WeatherBloc>())],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WeatherPage());
  }
}
