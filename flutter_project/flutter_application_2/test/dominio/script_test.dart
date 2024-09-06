import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:flutter_application_2/app/banco/script.dart';

main() async {
  setUpAll(() {
    databaseFactory = databaseFactoryFfi;
    sqfliteFfiInit();
  });
  test('test script create table', () async {
    var db2 = await openDatabase(inMemoryDatabasePath); // linha 11 e 12 usada para refazer o teste, ja que precisa apagar a tabela anterior
    deleteDatabase(db2.path);

    var db = await openDatabase(inMemoryDatabasePath, version: 1,
        onCreate: (db, version) {
      criarTabelas.forEach(db.execute);
      inserirRegistros.forEach(db.execute);
    });
    var list = await db.rawQuery("SELECT * FROM cliente");
    expect(list.length, 3);
  });
}
