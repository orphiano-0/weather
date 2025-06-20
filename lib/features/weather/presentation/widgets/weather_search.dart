import 'package:flutter/material.dart';

class WeatherSearch extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSearch;
  const WeatherSearch({
    super.key,
    required this.controller,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: (_) => onSearch(),
      style: const TextStyle(
        fontSize: 15,
        color: Colors.black,
        fontFamily: 'Montserrat',
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search City',
        hintStyle: TextStyle(
          color: Colors.grey[900],
          fontSize: 15,
          fontFamily: 'Montserrat',
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
      ),
    );
  }
}
