import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 40
      ),
      child: SingleChildScrollView(
        child: NoteForm(),
      ),
    );
  }
}



