import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String supTitle;
  @HiveField(2)
  String daet;
  @HiveField(3)
  String color;
  NoteModel(
      {required this.title,
      required this.supTitle,
      required this.daet,
      required this.color});
}
