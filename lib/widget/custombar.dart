import 'package:flutter/material.dart';

class CustomActionChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function onPressed;

  CustomActionChip({
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(label),
      onPressed: () => onPressed(),
      backgroundColor: isSelected ? Colors.white : Colors.red,
      labelStyle: TextStyle(color: isSelected ? Colors.red : Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: isSelected ? Colors.red : Colors.white,
        ),
      ),
    );
  }
}
