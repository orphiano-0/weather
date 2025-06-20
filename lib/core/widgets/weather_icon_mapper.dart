String getWeatherIcon(String weatherMain) {
  switch (weatherMain.toLowerCase()) {
    case 'clear':
      return 'assets/images/clear.png';
    case 'clouds':
      return 'assets/images/cloudy.png';
    case 'rain':
      return 'assets/images/rain.png';
    case 'drizzle':
      return 'assets/images/drizzle.png';
    case 'thunderstorm':
      return 'assets/images/thunderstorm.png';
    case 'mist':
    case 'fog':
    case 'haze':
      return 'assets/images/mist.png';
    default:
      return 'assets/images/clear.png'; //fallback
  }
}
