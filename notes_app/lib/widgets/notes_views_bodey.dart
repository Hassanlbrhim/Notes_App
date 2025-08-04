import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/widgets/custom_Note_ListViwes.dart';

import 'package:notes_app/widgets/custom_appBar.dart';

class NotesViewsBodey extends StatefulWidget {
  const NotesViewsBodey({super.key});

  @override
  State<NotesViewsBodey> createState() => _NotesViewsBodeyState();
}

class _NotesViewsBodeyState extends State<NotesViewsBodey> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        CustomAppbar(
          Title: "Notes Me",
          icon: Icons.search,
        ),
        Expanded(
          child: CustomNoteListViews(),
        ),
      ],
    );
  }
}
