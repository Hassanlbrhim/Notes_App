import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/Colors_Paleet.dart';

class EditColorsList extends StatefulWidget {
  EditColorsList({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteModel note;

  @override
  State<EditColorsList> createState() => _EditColorsListState();
}

class _EditColorsListState extends State<EditColorsList> {
  late int colorindex;
  @override
  void initState() {
    colorindex = noteColors.indexOf(Color(widget.note.color));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: noteColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                colorindex = index;
                widget.note.color = noteColors[index].value;
                setState(() {});
              },
              child: ColorsPaleet(
                color: noteColors[index],
                colorisactive: colorindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
