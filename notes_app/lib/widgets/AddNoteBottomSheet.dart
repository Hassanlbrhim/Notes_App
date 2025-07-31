import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextFiled.dart';
import 'package:notes_app/widgets/Custom_Button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
  String? Title, subTitle;
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
              Title = value;
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
            height: 65,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: "Add",
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
