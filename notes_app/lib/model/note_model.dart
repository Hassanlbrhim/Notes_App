import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String supTitle;

  @HiveField(2)
  DateTime date; // ✅ غيرت النوع من String إلى DateTime

  @HiveField(3)
  int color;

  NoteModel({
    required this.title,
    required this.supTitle,
    required this.date, // ✅ بقى تاريخ حقيقي
    required this.color,
  });
}
