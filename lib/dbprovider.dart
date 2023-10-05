import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:workshop_2023/models/activite.dart';
import 'package:workshop_2023/models/user.dart';

var usertestjeune = const User(id: 1, name: 'Mélanie', username: 'mel34', password: 'mel34', type: 'young');
var usertestvieux = const User(id: 2, name: 'Philippe-Didier', username: 'phil34', password: 'phil34', type: 'old');
var activitetest1 = const Activite(id: 1, title: 'Balade au parc', description: 'Petite balade dans un parc proche', type: 'ext');
var activitetest2 = const Activite(id: 2, title: 'Dîner à la maison', description: 'Petit dîner à la maison', type: 'int');

void dbinit() async {
  int? count;

  print(join(await getDatabasesPath(), 'demo_db6.db'));

  final database = await openDatabase(
    join(await getDatabasesPath(), 'demo_db6.db'),
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE IF NOT EXISTS user(id INTEGER PRIMARY KEY, name TEXT, username TEXT, password TEXT, type TEXT);''');
      await db.execute('''CREATE TABLE IF NOT EXISTS activite(id INTEGER PRIMARY KEY, title TEXT, description TEXT, type TEXT);''');
    },
    version: 3,
  );

  Future<void> insertUser(User user) async {
    final db = await database;
    await db.insert('user', user.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> insertActivite(Activite activite) async {
    final db = await database;
    await db.insert('activite', activite.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<int?> userIsEmpty() async {
    final db = await database;
    count = Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM user'));
    return count;
  }

  Future<int?> activiteIsEmpty() async {
    final db = await database;
    count = Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM activite'));
    return count;
  }

  int? userCount = await userIsEmpty();

  int? activiteCount = await activiteIsEmpty();

  if (userCount == 0) {
    insertUser(usertestjeune);
    insertUser(usertestvieux);
  }

  if (activiteCount == 0) {
    insertActivite(activitetest1);
    insertActivite(activitetest2);
  }

  Future<List<User>> user() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query('user');

    return List.generate(maps.length, (i) {
      return User(id: maps[i]['id'], name: maps[i]['name'], username: maps[i]['username'], password: maps[i]['password'], type: maps[i]['type']);
    });
  }

  Future<List<Activite>> activite() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query('activite');

    return List.generate(maps.length, (i) {
      return Activite(id: maps[i]['id'], title: maps[i]['title'], description: maps[i]['description'], type: maps[i]['type']);
    });
  }

  print("--------------------hello--------------------");
  print((await user())[1].name);
  print((await activite())[1].title);
}
