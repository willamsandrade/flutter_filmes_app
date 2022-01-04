import 'package:flutter/material.dart';

class FilmesAppUiConfig{
   //Evitar que a classe seja instanciada
  FilmesAppUiConfig._();

  static String get title => 'Filmes App';
  static ThemeData get theme => ThemeData(
    fontFamily: 'Metropolis',
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Color(0xFF222222),
        fontSize: 18,
        fontWeight: FontWeight.w500
      ),
    )
  );

}