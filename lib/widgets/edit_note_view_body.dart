import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

 final NoteModel note;
  

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.content,
            maxlines: 6,
          ),
          const SizedBox(
            height: 20,
          ),
          EditNoteColorList(
            note: widget.note,
          )
        ],
      ),
    );
  }
}