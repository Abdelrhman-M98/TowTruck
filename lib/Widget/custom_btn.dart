import 'package:flutter/material.dart';
import 'package:tow_truck/const.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    required this.title,
    required this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 392,
      height: 50,
      onPressed: onTap,
      color: primColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Circular border
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontSize: 18,
        ),
      ),
    );
  }
}
