import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNotes(NoteModel note) {
    try {
      var notesBox = Hive.box<NoteModel>(knoteBox);
      List<NoteModel> notes = notesBox.values.toList(); //علشان ارجع الداتا
      emit(NoteSucess(notes));
    } catch (e) {
      emit(NoteFailuer(errMessage: e.toString()));
    }
  }
}
