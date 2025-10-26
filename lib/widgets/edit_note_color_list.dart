
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<EditNoteColorList> {

  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        separatorBuilder: (context, index) => SizedBox(width: 24,),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              selected: currentIndex == index,
              color: kColors[index],
            ),
          );
        },
      ),
    );
  }
}