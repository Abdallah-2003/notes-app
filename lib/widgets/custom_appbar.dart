import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Spacer(),
        CustomSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}