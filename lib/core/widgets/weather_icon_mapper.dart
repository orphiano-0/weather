String getWeatherIcon(String weatherDescription) {
  final description = weatherDescription.toLowerCase();

  if (description.contains('clear')) {
    return 'assets/images/clear.png';
  } else if (description.contains('cloud')) {
    return 'assets/images/cloudy.png';
  } else if (description.contains('rain')) {
    return 'assets/images/rain.png';
  } else if (description.contains('drizzle')) {
    return 'assets/images/drizzle.png';
  } else if (description.contains('thunderstorm')) {
    return 'assets/images/thunderstorm.png';
  } else if (description.contains('mist') ||
      description.contains('fog') ||
      description.contains('haze')) {
    return 'assets/images/mist.png';
  } else if (description.contains('snow')) {
    return 'assets/images/snow.png';
  } else {
    return 'assets/images/clear.png'; // fallback
  }
}
