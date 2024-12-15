import 'package:flutter/material.dart';
import 'package:tow_truck/const.dart';

class RoundedCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final double size;

  const RoundedCheckbox({
    required this.value,
    required this.onChanged,
    this.activeColor = Colors.white,
    this.inactiveColor = Colors.grey,
    this.size = 18,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value); // Toggle the value when tapped
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: value ? activeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(5), // Rounded corners
          border: Border.all(
            color: value ? primColor : inactiveColor,
            width: 2,
          ),
        ),
        child: value
            ? Center(
                child: Container(
                  width: size * 0.5, // Dot size
                  height: size * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: primColor, // Dot color
                    //shape: BoxShape.rectangle,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
