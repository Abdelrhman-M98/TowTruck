import 'package:flutter/material.dart';
import 'package:tow_truck/Screens/on_boarding_page.dart';
import 'package:tow_truck/Screens/splash_screen.dart';

void main() {
  runApp(const TowTruck());
}

class TowTruck extends StatelessWidget {
  const TowTruck({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
