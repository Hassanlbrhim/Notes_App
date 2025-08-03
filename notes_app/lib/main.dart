import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/navigation/appRoutes.dart';
import 'package:notes_app/navigation/generatRoutes.dart';
import 'package:notes_app/simple_bloc_observer.dart';

import 'package:notes_app/views/splash.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(knoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: SplashScreen(),
        onGenerateRoute: generateRoute,
        initialRoute: Approutes.SplashScreen);
  }
}
