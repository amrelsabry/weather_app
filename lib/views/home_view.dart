import 'package:app_wether/cubits/weather_cubit.dart';
import 'package:app_wether/cubits/weather_state.dart';
import 'package:app_wether/views/search_view.dart';
import 'package:app_wether/weatherThemeHelper/weather_theme_helper.dart';
import 'package:app_wether/widgets/get_weather_info.dart';
import 'package:app_wether/widgets/no_weather_info_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        title: Text("Weather App " , style: GoogleFonts.montserrat(fontSize: 24,fontWeight: FontWeight.w600),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:  (context) => SearchView()));
            }, icon: Icon(CupertinoIcons.search,size: 40,)),
          )
        ],
      ),


      body: Center(
        child: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitial) {
              return NoWeatherInfoBody();
            } else if (state is WeatherLoading) {
              return CircularProgressIndicator();
            } else if (state is WeatherSuccess) {
              final weather = state.weather;
              return Container(
                decoration: BoxDecoration(
                  gradient: WeatherTheme.getGradient(state.weather.weatherCondition),
                ),
                child: GetWeatherInfo(weatherModel: weather));
            } else if (state is WeatherError) {
              return Text(
                state.message,
                style: GoogleFonts.montserrat(fontSize: 18, color: Colors.red),
                textAlign: TextAlign.center,
              );
            } else {
              return NoWeatherInfoBody();
            }
          },
        ),
      ),

    );
  }
}