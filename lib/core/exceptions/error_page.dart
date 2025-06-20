import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/constants.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Error 404: City Not Found!', style: kErrorText);
  }
}
