import 'package:app_wether/cubits/weather_state.dart';
import 'package:app_wether/service/weather_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  
  final WeatherService _weatherService = WeatherService();

  Future<void> fetchWeather(String cityName) async {
     emit(WeatherLoading());
    try {
      final weather =
      await _weatherService.fetchWeatherData(cityName: cityName);
      emit(WeatherSuccess(weather: weather));
    } catch (e) {
      emit(WeatherError(message: e.toString()));
    }
  } 



}