import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

// screens
import 'package:chips/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // default theme = light
    ThemeData _lightMode = FlexThemeData.light(
      scheme: FlexScheme.materialBaseline,
      textTheme: GoogleFonts.rubikTextTheme(
        Theme.of(context).textTheme,
      ),
      useMaterial3: true,
    );
    ThemeData _darkMode = FlexThemeData.dark(
      scheme: FlexScheme.materialBaseline,
      textTheme: GoogleFonts.rubikTextTheme(
        Theme.of(context).textTheme,
      ),
      useMaterial3: true,
    );
    ThemeMode _themeMode = ThemeMode.light;
    return MaterialApp(
      title: 'Chips',
      theme: _lightMode,
      darkTheme: _darkMode,
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      home: ChipsHome(),
    );
  }
}
