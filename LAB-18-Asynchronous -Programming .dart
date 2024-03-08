import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey;
  final String apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

  WeatherService(this.apiKey);

  Future<Map<String, dynamic>> getWeatherData(String cityName) async {
    final String url = '$apiUrl?q=$cityName&appid=$apiKey&units=metric';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(
          'Failed to fetch weather data. Status code: ${response.statusCode}');
    }
  }
}

void main() async {
  final String apiKey = 'YOUR_API_KEY';
  final String cityName = 'YourCityName';

  WeatherService weatherService = WeatherService(apiKey);

  try {
    print('Fetching weather data for $cityName...');
    Map<String, dynamic> weatherData =
        await weatherService.getWeatherData(cityName);

    double temperature = weatherData['main']['temp'];
    String weatherCondition = weatherData['weather'][0]['main'];

    print('Current Temperature: ${temperature.toStringAsFixed(1)}°C');
    print('Weather Conditions: $weatherCondition');
  } catch (e) {
    print('Error: $e');
  }
}
