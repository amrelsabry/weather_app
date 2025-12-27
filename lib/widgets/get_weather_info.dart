import 'package:app_wether/models/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetWeatherInfo extends StatelessWidget {
  const GetWeatherInfo({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:   16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(weatherModel.cityName, style: GoogleFonts.montserrat(fontSize: 32,fontWeight: FontWeight.w600),),
          Text("Update at:${weatherModel.updateAt}" , style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w500), ),
          SizedBox(height: 85,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.wb_sunny , size: 64,),
              SizedBox(width: 8,),
              Text("${weatherModel.temperature} °C" , style: GoogleFonts.montserrat(fontSize: 32,fontWeight: FontWeight.w600),),
              Column(
                children: [
                  Text("MinTemp: ${weatherModel.minTemp}°C" , style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w500),),
                  Text("MaxTemp: ${weatherModel.maxTemp}°C" , style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w500),),
                ],
              )
      
            ],
          ),
      
          SizedBox(height: 85,),
          Text(weatherModel.weatherCondition , style: GoogleFonts.montserrat(fontSize: 32,fontWeight: FontWeight.w600),),
        ],
      ),
    );
  }
}