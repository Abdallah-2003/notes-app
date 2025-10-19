import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_bottom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

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
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(height: 24,),
            CustomTextField(
              hint: 'Content',
              maxlines: 6,
            ),
            SizedBox(height: 60,),
            CustomNoteBottom(),
            SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}