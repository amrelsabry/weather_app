
import 'package:app_wether/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherService {

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "http://api.weatherapi.com/v1/",
      connectTimeout: Duration(milliseconds: 3000),
      receiveTimeout: Duration(milliseconds: 3000),
    ),
  );

  Future<WeatherModel> fetchWeatherData({required String cityName}) async {
    try {
      final response = await _dio.get("forecast.json", queryParameters: {
        "key": "7ecd3fbef2d24e0f9e7171956251211",
        "q": cityName,
        "days": 1,
      });

      //print(  response.data);
      final data = response.data as Map<String, dynamic>;
      return WeatherModel.fromJson(data);


  }catch (e) {
      throw Exception('Failed to load weather data: $e');
    } 

}
}