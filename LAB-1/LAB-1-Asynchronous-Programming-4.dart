// Exercise 4

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  final String apiKey;
  final String baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  WeatherApiClient(this.apiKey);

  Future<Map<String, dynamic>> getWeather(String city) async {
    final response = await http.get(Uri.parse('$baseUrl?q=$city&appid=$apiKey'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}

void main() async {
  // Replace 'YOUR_API_KEY' with your OpenWeatherMap API key
  final apiKey = 'YOUR_API_KEY';
  final weatherApiClient = WeatherApiClient(apiKey);

  // Specify the city for weather data
  final city = 'London';

  try {
    // Fetch weather data asynchronously
    final weatherData = await weatherApiClient.getWeather(city);

    // Extract temperature and weather conditions from the response
    final temperature = weatherData['main']['temp'];
    final weatherDescription = weatherData['weather'][0]['description'];

    // Display the weather information
    print('Current Temperature in $city: $temperature °C');
    print('Weather Conditions: $weatherDescription');
  } catch (e) {
    print('Error fetching weather data: $e');
  }
}
