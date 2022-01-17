import 'package:agenda_crud/app/database/sqlite/script.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Conexao {
  Conexao._privateConstructor();

  static final Conexao instance = Conexao._privateConstructor();
  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'contato.db3');
    //print(path);
    //deleteDatabase(path);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(CREATE_TABLE);
    await db.execute(INSERT1);
    await db.execute(INSERT2);
    await db.execute(INSERT3);
    await db.execute(INSERT4);
  }
}
