part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoding extends NoteState {}

class NoteSucess extends NoteState {
  final List<NoteModel> notes;

  NoteSucess(this.notes);
}

class NoteFailuer extends NoteState {
  final String errMessage;

  NoteFailuer({required this.errMessage});
}
