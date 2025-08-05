import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';

import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/navigation/appRoutes.dart';
import 'package:notes_app/widgets/date_display_widget.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 10, left: 12),
      width: 350,
      height: 250,
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: ListTile(
              title: Text(
                note.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Text(
                  note.supTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Approutes.Editnotesviews,
                        arguments: note,
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                    },
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          DatePickerWidget(
            initialDate: note.date,
            onDateSelected: (selectedDate) {
              note.date = selectedDate;
            },
          ),
        ],
      ),
    );
  }
}
