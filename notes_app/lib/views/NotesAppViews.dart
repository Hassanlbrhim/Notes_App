import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/widgets/AddNoteBottomSheet.dart';
import 'package:notes_app/widgets/notes_views_bodey.dart';

class NotesAppViews extends StatelessWidget {
  const NotesAppViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          floatingActionButton: FloatingActionButton(
            backgroundColor: priemeryColor,
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                context: context,
                builder: (context) => const AddNoteBottomSheet(),
              );
            },
            child: const Icon(Icons.add, color: Colors.black),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const NotesViewsBodey(),
            ),
          ),
        );
      },
    );
  }
}
