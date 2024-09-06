import 'package:flutter_application_2/app/banco/sqlite/conexao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

main() {
  late Database db;
  setUp(() async {
    databaseFactory = databaseFactoryFfi;
    sqfliteFfiInit();
    db = await Conexao.abrir();
  });
  test("teste script create table", () async {
    var list = await db.rawQuery('SELECT * FROM cliente');
    expect(list.length, 3);
  });
}
