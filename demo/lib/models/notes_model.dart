// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:demo/Databases/dbHelper.dart';

class NotesModel {
  int? noteid;
  String title;
  String desc;
  NotesModel({
    this.noteid,
    required this.title,
    required this.desc,
  });

  factory NotesModel.fromMap(Map<String, dynamic> mapdata) {
    return NotesModel(
        title: mapdata[DbHelper.notes_title],
        desc: mapdata[DbHelper.notes_desc],
        noteid: mapdata[DbHelper.note_col]);
  }

  Map<String, dynamic> toMap() {
    return {
      DbHelper.notes_title: title,
      DbHelper.notes_desc: desc,
      DbHelper.note_col: noteid,
    };
  }
}
