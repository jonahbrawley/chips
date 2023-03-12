import 'package:flutter/material.dart';

// chips
import 'package:chips/main.dart';
import 'package:chips/util/button.dart';

class ChipsHome extends StatefulWidget {
  const ChipsHome({Key? key}) : super(key: key);

  @override
  State<ChipsHome> createState() => _ChipsHomeState();
}

class _ChipsHomeState extends State<ChipsHome> {
  List<bool> _themeSel = <bool>[true, false];
  List<Widget> _theme = [Text('Light'), Text('Dark')];

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
              child: Text(
                'Quick Chips',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 46,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Column(
              children: [
                // Create, Join, Theme
                Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                ChipsButton(
                  width: double.infinity,
                  height: defaultHeight,
                  onPressed: () {},
                  child: const Text('Create game'),
                ),
                ChipsButton(
                  width: double.infinity,
                  height: defaultHeight,
                  onPressed: () {},
                  child: const Text('Join game'),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                ToggleButtons(
                  isSelected: _themeSel,
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < _themeSel.length; i++) {
                        _themeSel[i] = i == index;
                      }
                      if (index == 0) {
                        MyApp.of(context).toggleTheme(ThemeMode.light);
                      } else {
                        MyApp.of(context).toggleTheme(ThemeMode.dark);
                      }
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderWidth: 2,
                  constraints: const BoxConstraints(
                    minHeight: 40.0,
                    minWidth: 80.0,
                  ),
                  children: _theme,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
