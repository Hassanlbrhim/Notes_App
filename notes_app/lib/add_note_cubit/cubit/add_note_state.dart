part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoding extends AddNoteState {}

class AddNoteSucess extends AddNoteState {}

class AddNoteFailuer extends AddNoteState {
  final String errMessage;

  AddNoteFailuer({required this.errMessage});
}
