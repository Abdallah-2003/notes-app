import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
<<<<<<< HEAD
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesuccess());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNotefailure(message: e.toString()));
    }
=======
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    await noteBox.add(note);
>>>>>>> 82f6fb419e14b61fc5d3e99a81683df7a1be09d7
  }
}
