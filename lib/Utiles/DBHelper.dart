import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static DBHelper dbHelper = DBHelper._();

  DBHelper._();

  Database? database;

  Future<Database> ChackDB() async {
    if (database == null) {
      return await initDB();
    } else {
      return database!;
    }
  }

  Future<Future<Database>> initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();

    String path = join(
      directory.path,
      "School.db",
    );

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        String quary =
            "CREATE TABLE homeWork (id INTEGER PRIMARY KEY AUTOINCREMENT , homeWork TEXT , date TEXT , subject TEXT, std INTEGER)";

        db.execute(quary);

        String quary1 =
            "CREATE TABLE fees (id INTEGER PRIMARY KEY AUTOINCREMENT , first_name TEXT , last_name TEXT , mobile_no TEXT , std INTEGER , sex TEXT , date TEXT , paidFees INTEGER , lessFees INTEGER , totalFees INTEGER)";

        db.execute(quary1);
      },
    );
  }

  // Home Work Table
  Future<void> insertHomeWork({
    required homeWork,
    required date,
    required subject,
    required std,
  }) async {
    database = await ChackDB();

    database!.insert("homeWork", {
      "homeWork": homeWork,
      "date": date,
      "subject": subject,
      "std": std,
    });
  }

  Future<List<Map>> readHomeWork() async {
    database = await ChackDB();

    String quary = "SELECT * FROM homeWork";

    List<Map> homeWork = await database!.rawQuery(quary);

    return homeWork;
  }

  Future<void> delateHomeWork({
    required id,
  }) async {
    database = await ChackDB();

    database!.delete(
      "homeWork",
      where: "id=?",
      whereArgs: [id],
    );
  }

  Future<void> updateHomeWork({
    required id,
    required homeWork,
    required date,
    required subject,
    required std,
  }) async {
    database = await ChackDB();

    database!.update(
      "homeWork",
      {
        "homeWork": homeWork,
        "date": date,
        "subject": subject,
        "std": std,
      },
      where: "id=?",
      whereArgs: [id],
    );
  }

  // Fees Table
  Future<void> insertFees({
    required first_name,
    required last_name,
    required mobile_no,
    required std,
    required sex,
    required date,
    required paidFees,
    required lessFees,
    required totalFees,
    // required image,
  }) async {
    database = await ChackDB();

    database!.insert(
      "fees",
      {
        "first_name": first_name,
        "last_name": last_name,
        "mobile_no": mobile_no,
        "std": std,
        "sex": sex,
        "date": date,
        "paidFees": paidFees,
        "lessFees": lessFees,
        "totalFees": totalFees,
        // "image": image,
      },
    );
  }

  Future<List<Map>> readFees() async {
    database = await ChackDB();

    String quary = "SELECT * FROM fees";

    List<Map> Fees = await database!.rawQuery(quary);

    return Fees;
  }

  delateFees({
    required id,
  }) async {
    database = await ChackDB();

    database!.delete(
      "fees",
      whereArgs: [id],
      where: "id=?",
    );
  }

  Future<void> updateFees({
    required id,
    required first_name,
    required last_name,
    required mobile_no,
    required std,
    required sex,
    required date,
    required paidFees,
    required lessFees,
    required totalFees,
  }) async {
    database = await ChackDB();

    database!.update(
      "fees",
      {
        "first_name": first_name,
        "last_name": last_name,
        "mobile_no": mobile_no,
        "std": std,
        "sex": sex,
        "date": date,
        "paidFees": paidFees,
        "lessFees": lessFees,
        "totalFees": totalFees,
      },
      where: "id=?",
      whereArgs: [id],
    );
  }

  Future<List> filterStudentStd({
    required std,
  }) async {
    database = await ChackDB();

    String quary = "SELECT * FROM fees WHERE std=$std";

    List l1 = await database!.rawQuery(quary);

    return l1;
  }
}
