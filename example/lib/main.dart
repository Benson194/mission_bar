import 'package:flutter/material.dart';
import 'package:mission_bar/mission_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(
            child: MissionBar(
          value: 10,
          min: 0,
          max: 100,
          iconWidth: 55,
          iconList: [
            Image(
              image: AssetImage('assets/image/1.png'),
              width: 60,
            ),
            Image(
              image: AssetImage('assets/image/2.png'),
              width: 60,
            ),
            Image(
              image: AssetImage('assets/image/3.png'),
              width: 60,
            ),
            Image(
              image: AssetImage('assets/image/4.png'),
              width: 60,
            )
          ],
          sliderPadding: EdgeInsets.only(left: 53, right: 53),
          sliderActiveColor: Colors.red,
          sliderInActiveColor: Colors.grey,
        )),
      ),
    );
  }
}
