import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoWeatherInfoBody extends StatelessWidget {
  const NoWeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
          textAlign:TextAlign. center,
          "No Weather Data Available , Please Search a City",
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        );
  }
}