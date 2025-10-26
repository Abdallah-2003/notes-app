
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListview extends StatefulWidget {
  const ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {

  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xfff72585),
    Color(0xff7209b7),
    Color(0xff3a0ca3),
    Color(0xff4361ee),
    Color(0xff4cc9f0),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        separatorBuilder: (context, index) => SizedBox(width: 24,),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              selected: currentIndex == index,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}