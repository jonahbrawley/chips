import 'package:flutter/material.dart';
import 'package:chips/util/button.dart';

// this is the home screen
// currently set to flutter demo
class ChipsHome extends StatefulWidget {
  const ChipsHome({Key? key}) : super(key: key);

  @override
  State<ChipsHome> createState() => _ChipsHomeState();
}

class _ChipsHomeState extends State<ChipsHome> {
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
                    onPressed: () {},
                    child: const Text('Settings'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
