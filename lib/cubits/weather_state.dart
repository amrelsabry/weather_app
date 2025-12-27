

import 'package:app_wether/models/weather_model.dart';

abstract class WeatherState  {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  final WeatherModel weather;
  WeatherSuccess({required this.weather});
}

class WeatherError extends WeatherState {
  final String message;
  WeatherError({required this.message});

}