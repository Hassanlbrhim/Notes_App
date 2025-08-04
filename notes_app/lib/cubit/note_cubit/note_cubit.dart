import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
}
