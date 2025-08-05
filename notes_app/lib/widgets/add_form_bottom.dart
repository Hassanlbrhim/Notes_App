import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/Color_List_Viwes.dart';
import 'package:notes_app/widgets/CustomTextFiled.dart';
import 'package:notes_app/widgets/Custom_Button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  // المفتاح الخاص بالتحقق
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  //بيظهر حاله الايرور بتاعى
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomTextFiled(
            onsaved: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextFiled(
            onsaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxline: 7,
          ),
          SizedBox(
            height: 10,
          ),
          ColorListViwes(),
          SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isloding: state is AddNoteLoding ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var noteModule = NoteModel(
                        title: title!,
                        supTitle: subTitle!,
                        date: DateTime.now(),
                        color: Colors.green.value);
                    BlocProvider.of<AddNoteCubit>(context).addNot(noteModule);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: "Add",
              );
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}




