import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = Color(0xFFEF9A9A);
  addNot(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoding());
    try {
      var notesBox = Hive.box<NoteModel>(knoteBox);

      await notesBox.add(note);

      emit(AddNoteSucess());
    } catch (e) {
      emit(AddNoteFailuer(errMessage: e.toString()));
    }
  }
}
