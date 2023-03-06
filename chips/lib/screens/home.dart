import 'package:flutter/material.dart';
import 'package:chips/util/button.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class ChipsHome extends StatefulWidget {
  const ChipsHome({Key? key}) : super(key: key);

  @override
  State<ChipsHome> createState() => _ChipsHomeState();
}

class _ChipsHomeState extends State<ChipsHome> {
  void _toggleTheme(ThemeMode themeMode) {
    setState(() {
      themeMode =
          themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double defaultWidth = MediaQuery.of(context).size.width * 0.22;
    final double defaultHeight = MediaQuery.of(context).size.width * 0.1;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Quick Chips',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 54),
              ),
            ),
            Column(
              children: [
                // Create, Join, Settings
                ChipsButton(
                  width: defaultWidth,
                  height: defaultHeight,
                  onPressed: () {},
                  child: const Text('Create'),
                ),
                ChipsButton(
                  width: defaultWidth,
                  height: defaultHeight,
                  onPressed: () {},
                  child: const Text('Join'),
                ),
                ChipsButton(
                    width: defaultWidth,
                    height: defaultHeight,
                    onPressed: () {
                      // toggle
                    },
                    child: const Text('Theme')),
                /*
                FlexThemeModeSwitch(
                    themeMode: ThemeMode.light,
                    onThemeModeChanged: _toggleTheme,
                    flexSchemeData: FlexSchemeData(name: 'Dark', description: 'description', light: Colors.white, dark: dark)),
              */
              ],
            ),
          ],
        ),
      ),
    );
  }
}
