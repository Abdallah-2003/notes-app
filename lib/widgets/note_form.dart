import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_bottom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NoteForm extends StatefulWidget {
  const NoteForm({super.key});

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(height: 24,),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            hint: 'Content',
            maxlines: 6,
          ),
          const SizedBox(height: 60,),
          CustomNoteBottom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(height: 32,),
        ],
      ),
    );
  }
}