import 'package:flutter/material.dart';
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
      return _createRoute(NotesAppViews());
    case Approutes.Editnotesviews:
      return _createRoute(Editnotesviews());

    default:
      return _createRoute(SizedBox());
  }
}
