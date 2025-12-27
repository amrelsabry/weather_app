class WeatherModel {
  final String cityName;
  final String updateAt;
  final double temperature;
  final double minTemp;
  final double maxTemp;
  final String weatherCondition;
  final String iconCode;

  WeatherModel({
    required this.cityName,
    required this.updateAt,
    required this.temperature,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherCondition,
    required this.iconCode,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    final current = json['current'];
    final forecastDay = json['forecast']['forecastday'][0]['day'];

    return WeatherModel(
      cityName: json['location']['name'],
      updateAt: current['last_updated'],
      temperature: current['temp_c'].toDouble(),
      minTemp: forecastDay['mintemp_c'].toDouble(),
      maxTemp: forecastDay['maxtemp_c'].toDouble(),
      weatherCondition: current['condition']['text'],
      iconCode: current['condition']['icon'],
    );
  }
}
