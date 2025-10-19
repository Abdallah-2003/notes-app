import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/note_listview.dart';

class NoteBody extends StatelessWidget {
  const NoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            title: 'Notes',
            icon: Icons.search,
          ),
          NoteListview()
        ],
      ),
    );
  }
}