import "package:sqflite/sqflite.dart";
import 'package:path/path.dart';

var usertestjeune = const User(id: 1, name: 'Mélanie', username: 'mel34', password: 'mel34', type: 'young');
var usertestvieux = const User(id: 2, name: 'Philippe-Didier', username: 'phil34', password: 'phil34', type: 'old');
var activitetest1 = const Activite(id: 1, name: 'Balade au parc', description: 'Petite balade dans un parc proche', type: 'ext');
var activitetest2 = const Activite(id: 2, name: 'Dîner à la maison', description: 'Petit dîner à la maison', type: 'int');


void dbinit() async {
  int? count;
  final database = openDatabase(
    join(await getDatabasesPath(), 'demo_db.db'),
    onCreate: (db, version){
      return db.execute("Create Table user(id Integer Primary Key, name String, username String, password String, type String) Union Create Table activite(id Integer Primary Key, title String, description String, type String)");
    },
    version: 1
  );

  Future<void> insertUser(User user) async{
    final db = await database;
    await db.insert('user', user.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> insertActivite(Activite activite) async{
    final db = await database;
    await db.insert('user', activite.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<int?> userIsEmpty()async{
      final db = await database;
      count = Sqflite
         .firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM user'));
     return count;
  }

  Future<int?> activiteIsEmpty()async{
      final db = await database;
      count = Sqflite
         .firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM activite'));
     return count;
  }

  int? userCount = await userIsEmpty();

  int? activiteCount = await activiteIsEmpty();

  if (userCount == 0){
    insertUser(usertestjeune);
    insertUser(usertestvieux);
  }

  if (activiteCount == 0){
    insertActivite(activitetest1);
    insertActivite(activitetest2);
  }
  
  Future<List<User>> user() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query('user');

    return List.generate(maps.length, (i) {
      return User(
        id: maps[i]['id'],
        name: maps[i]['name'],
        username: maps[i]['username'],
        password: maps[i]['password'],
        type: maps[i]['type']
      );
    });
  }

  Future<List<Activite>> activite() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query('user');

    return List.generate(maps.length, (i) {
      return Activite(
        id: maps[i]['id'],
        name: maps[i]['name'],
        description: maps[i]['description'],
        type: maps[i]['type']
      );
    });

}

print(await user());
print(await activite());
}


class User{
  final int id;
  final String name;
  final String username;
  final String password;
  final String type;

  const User({
    required this.id,
    required this.name,
    required this.username,
    required this.password,
    required this.type
  });

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'name' : name,
      'username' : username,
      'password' : password,
      'type' : type,
    };
  }


}


class Activite{
  final int id;
  final String name;
  final String description;
  final String type;

  const Activite({
    required this.id,
    required this.name,
    required this.description,
    required this.type
  });

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'name' : name,
      'description' : description,
      'type' : type
    };
  }


}


