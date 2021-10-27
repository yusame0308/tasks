import 'package:tasks/databases/app_database.dart';
import 'package:tasks/models/task.dart';
import 'package:sqflite/sqflite.dart';

class TaskDatabase extends AppDatabase {
  final String _tableName = 'tasks';

  Future<List<Task>> getTasks() async {
    final db = await database;

    final maps = await db.query(
      _tableName,
      orderBy: 'id DESC',
    );

    if (maps.isEmpty) return [];

    return maps.map((map) => Task.fromJson(map)).toList();
  }

  Future<Task> insert(Task task) async {
    final db = await database;

    final id = await db.insert(
      _tableName,
      task.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return task.copyWith(
      id: id,
    );
  }

  Future update(Task task) async {
    final db = await database;

    return await db.update(
      _tableName,
      task.toJson(),
      where: 'id = ?',
      whereArgs: [task.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future delete(int id) async {
    final db = await database;

    return await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
