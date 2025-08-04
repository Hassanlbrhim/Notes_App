part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoding extends NoteState {}

class NoteSucess extends NoteState {}

class NoteFailuer extends NoteState {
  final String errMessage;

  NoteFailuer({required this.errMessage});
}
