import 'dart:io';
import 'package:path/path.dart';
import 'package:demo/models/notes_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static final DbHelper db = DbHelper();
  Database? _database;
  static const Note_table = "notes_table";
  static const note_col = "notes_col";
  static const notes_title = "notes_title";
  static const notes_desc = "notes_desc";

  Future<Database> getDb() async {
    if (_database != null) {
      return _database!;
    } else {
      return await initDb();
    }
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    var dbpath = join(directory.path + "notedb.db");
    return openDatabase(dbpath, version: 1, onCreate: (db, version) {
      db.execute(
          " create table $Note_table( $note_col integer primary key autoincrement , $notes_title text, $notes_desc text ) ");
    });
  }

  Future<bool> addNotes(NotesModel newnote) async {
    var db = await getDb();
    int rowseffect = await db.insert(Note_table, newnote.toMap());
    return rowseffect > 0; // false , true
  }
}
