import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNot(NoteModel note) async {
    emit(AddNoteLoding());
    try {
      var notesBox = Hive.box<NoteModel>(knoteBox);
      emit(AddNoteSucess());
      await notesBox.add(note);
    } catch (e) {
      AddNoteFailuer(errMessage: e.toString());
    }
  }
}
