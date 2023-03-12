import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

// chips
import 'package:chips/screens/home.dart';
import 'package:chips/util/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    // default theme = light
    ThemeData _lightMode = FlexThemeData.light(
      scheme: FlexScheme.materialBaseline,
      colorScheme: flexSchemeLight, // colors.dart
      textTheme: GoogleFonts.rubikTextTheme(
        Theme.of(context).textTheme,
      ),
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 9,
      subThemesData: const FlexSubThemesData(),
      keyColors: const FlexKeyColors(),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
    );
    ThemeData _darkMode = FlexThemeData.dark(
      scheme: FlexScheme.materialBaseline,
      colorScheme: flexSchemeDark, // colors.dart
      textTheme: GoogleFonts.rubikTextTheme(
        Theme.of(context).textTheme,
      ),
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 15,
      subThemesData: const FlexSubThemesData(),
      keyColors: const FlexKeyColors(),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
    );

    return MaterialApp(
      title: 'Chips',
      theme: _lightMode,
      darkTheme: _darkMode,
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      home: ChipsHome(),
    );
  }

  void toggleTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
