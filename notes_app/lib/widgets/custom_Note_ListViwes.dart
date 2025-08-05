import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/widgets/custom_note_items.dart';

class CustomNoteListViews extends StatelessWidget {
  const CustomNoteListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        var notes = BlocProvider.of<NoteCubit>(context).notes;

        if (notes == null) {
          return const Center(child: CircularProgressIndicator());
        } else if (notes.isEmpty) {
          return const Center(child: Text('لا توجد ملاحظات حالياً ☹️'));
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: CustomItem(
                    note: notes[index],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
