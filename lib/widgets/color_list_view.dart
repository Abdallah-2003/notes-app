
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListview extends StatelessWidget {
  const ColorListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        separatorBuilder: (context, index) => SizedBox(width: 10,),
        itemBuilder: (context, index) {
          return ColorItem();
        },
      ),
    );
  }
}