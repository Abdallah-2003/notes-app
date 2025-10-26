
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.selected, required this.color});

  final bool selected;
  final Color color; 

  @override
  Widget build(BuildContext context) {
    return selected == true 
    ? CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 26,
        backgroundColor: color,
      ),
    )
    : CircleAvatar(
      radius: 26,
      backgroundColor: color,
    );
  }
}