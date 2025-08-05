// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';

import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/CustomTextFiled.dart';
import 'package:notes_app/widgets/custom_appBar.dart';

class Customeditnotes extends StatefulWidget {
  const Customeditnotes({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<Customeditnotes> createState() => _CustomeditnotesState();
}

class _CustomeditnotesState extends State<Customeditnotes> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CustomAppbar(
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.supTitle = subtitle ?? widget.note.supTitle;
            widget.note.save();
            BlocProvider.of<NoteCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          Title: "Edit Note",
          icon: Icons.check,
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextFiled(
          onChanged: (value) {
            title = value;
          },
          hintText: widget.note.title,
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextFiled(
          onChanged: (value) {
            subtitle = value;
          },
          hintText: widget.note.supTitle,
          maxline: 7,
        )
      ],
    );
  }
}
