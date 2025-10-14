import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Notes',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}