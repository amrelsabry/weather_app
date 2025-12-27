import 'package:flutter/material.dart';

class WeatherTheme {
static LinearGradient getGradient(String condition) {
  final c = condition.toLowerCase();

  if (c.contains('sun')) {
    return LinearGradient(
      colors: [Colors.orange, Colors.yellow],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  } else if (c.contains('cloud')) {
    return LinearGradient(
      colors: [Colors.grey, Colors.blueGrey],
    );
  } else if (c.contains('rain')) {
    return LinearGradient(
      colors: [Colors.blueGrey, Colors.blue],
    );
  } else {
    return LinearGradient(
      colors: [Colors.grey.shade400, Colors.grey.shade800],
    );
  }
}
}