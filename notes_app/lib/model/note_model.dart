import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String SupTitle;
  @HiveField(2)
  String daet;
  @HiveField(3)
  String Color;
  NoteModel(
      {required this.title,
      required this.SupTitle,
      required this.daet,
      required this.Color});
}
