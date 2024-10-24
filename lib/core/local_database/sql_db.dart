// ignore_for_file: avoid_print

import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Version {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  initialDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'diva.db');
    Database mydb = await openDatabase(path,
        onCreate: _onCreate, version: 1, onUpgrade: _onUpgrade);
    return mydb;
  }

//this function to add new column to the table without delete the old table and the date not removed.
  _onUpgrade(Database db, int oldVersion, int newVersion) async {
    print("onUpgrade =====================================");
    //   await db.execute('''
    //             ALTER TABLE notes ADD COLUMN "color" TEXT
    // ''');
  }

// create one table or  more than one table in the same time using Batch
//not that the Batch is used in Firebase.
  _onCreate(Database db, int version) async {
    Batch batch = db.batch();

    batch.execute('''
  CREATE TABLE "products" (
    "id" INTEGER  NOT NULL,
    "title" TEXT NOT NULL,
    "price" TEXT NOT NULL,
    "image" TEXT NOT NULL
  )
 ''');

//     batch.execute('''
//   CREATE TABLE "students" (
//     "id" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT,
//     "firstName" TEXT NOT NULL,
//     "lastNme" TEXT NOT NULL,
//     "address" TEXT NOT NULL
//   )
//  ''');

    await batch.commit();

    print(" onCreate =====================================");
  }

  //delete all data base ( delete all tables from database).
  //if you want to add new column you can call this function from any place or any button you can click
  // change the version of the database, and add the new column.
  deleteAllDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'diva.db');
    await deleteDatabase(path);
  }

// CRUD with SQLite code.
// SELECT
// DELETE
// UPDATE
// INSERT

  read(String table) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.query(table);
    return response;
  }

  insert(String table, Map<String, Object?> values) async {
    Database? mydb = await db;
    int response = await mydb!.insert(table, values);
    return response;
  }

  update(String table, Map<String, Object?> values, String? whereId) async {
    Database? mydb = await db;
    int response = await mydb!.update(table, values, where: whereId);
    return response;
  }

//delete only one row.
  delete(String table, String? whereId) async {
    Database? mydb = await db;
    int response = await mydb!.delete(table, where: whereId);
    return response;
  }
}