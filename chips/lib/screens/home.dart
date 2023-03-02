import 'package:flutter/material.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              /*
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * .1),
              */
              child: const Text(
                'Chips',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 64),
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.22,
                      MediaQuery.of(context).size.width * 0.1,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height * 0.1,
                    )),
                    //backgroundColor: inverseSurface,
                    //foregroundColor: primarySurface,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Create game'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
