import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
    HomeScreen.id : (context) =>const HomeScreen(),
    ScreenOne.id : (context) =>const ScreenOne(),

    },
    );
  }
}


