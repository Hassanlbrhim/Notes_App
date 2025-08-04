// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/navigation/appRoutes.dart';
import 'package:notes_app/widgets/date_display_widget.dart';

class CustomItem extends StatelessWidget {
  CustomItem({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Approutes.Editnotesviews);
      },
      child: Container(
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
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 30,
                  ),
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
      ),
    );
  }
}
