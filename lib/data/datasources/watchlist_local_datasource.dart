import 'package:sqflite/sqflite.dart' as sqflite;

import '../models/watchlist_response_model.dart';

class WatchlistLocalDatasource {
  WatchlistLocalDatasource._init();

  static final WatchlistLocalDatasource instance =
      WatchlistLocalDatasource._init();

  static sqflite.Database? _database;
  final String tableName = "watchlist";

  Future<sqflite.Database> _initDB(String filePath) async {
    final dbPath = await sqflite.getDatabasesPath();
    final path = dbPath + filePath;

    return await sqflite.openDatabase(
      path,
      version: 1,
      onCreate: _createDb,
    );
  }

  Future<void> _createDb(sqflite.Database db, int version) async {
    await db.execute("""
      CREATE TABLE $tableName(
        id INTEGER,
        originalTitle TEXT,
        overview TEXT,
        posterPath TEXT,
        voteAverage TEXT,
        voteCount TEXT,
        isWatchlist INTEGER
      )""");
  }

  Future<sqflite.Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB("cinemania.db");
    return _database!;
  }

  Future<void> addToWatchlist(
      WatchlistResponseModel watchlistResponseModel) async {
    final db = await instance.database;
    await db.insert(tableName, watchlistResponseModel.toMap());
  }

  Future<List<WatchlistResponseModel>> getAllWatchlist() async {
    final db = await instance.database;
    final result = await db.query(tableName, orderBy: "id DESC");

    return result.map((e) => WatchlistResponseModel.fromMap(e)).toList();
  }

  Future<void> removeAllWatchlist() async {
    final db = await instance.database;
    await db.delete(tableName);
  }
}
