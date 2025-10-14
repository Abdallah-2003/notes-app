import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NoteListview extends StatelessWidget {
  const NoteListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return CustomNoteItem();
        }, 
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 8,
          );
        }, 
        itemCount: 10
      ),
    );
  }
}