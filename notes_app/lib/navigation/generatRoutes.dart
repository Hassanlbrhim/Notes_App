import 'package:flutter/material.dart';

import 'package:notes_app/model/note_model.dart';

import 'package:notes_app/navigation/appRoutes.dart';
import 'package:notes_app/views/NotesAppViews.dart';
import 'package:notes_app/views/editNotesViews.dart';
import 'package:notes_app/views/splash.dart';

_createRoute(Widget page) {
  return MaterialPageRoute(builder: (context) => page);
}

Route generateRoute(settings) {
  switch (settings.name) {
    case Approutes.SplashScreen:
      return _createRoute(SplashScreen());
    case Approutes.NotesAppViews:
      return _createRoute(
        NotesAppViews(),
      );
    case Approutes.Editnotesviews:
      final note = settings.arguments as NoteModel;
      return _createRoute(Editnotesviews(
        note: note,
      ));

    default:
      return _createRoute(SizedBox());
  }
}
