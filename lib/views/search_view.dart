import 'package:app_wether/cubits/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Search City",style: GoogleFonts.montserrat(fontSize: 24,fontWeight: FontWeight.w600),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:   8.0),
          child: TextFormField(
            onFieldSubmitted: (value) {
              Navigator.pop(context);
              BlocProvider.of<WeatherCubit>(context).fetchWeather(value);
             // print(value);
            },
            style: TextStyle(fontSize: 24),
            decoration:  InputDecoration(
              hintText: "Enter city name",
              contentPadding: const EdgeInsets.symmetric(vertical: 28,horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}