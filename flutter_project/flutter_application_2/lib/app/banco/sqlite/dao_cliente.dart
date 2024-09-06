import 'package:flutter_application_2/app/banco/sqlite/conexao.dart';
import 'package:flutter_application_2/dominio/dto/dto_cliente.dart';
import 'package:flutter_application_2/dominio/inteface/i_dao_cliente.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DAOCliente implements IDAOCliente {
  late Database _db;

  @override
  Future<DTOCliente> alterarStatus(DTOCliente dto) {
    throw UnimplementedError();
  }

  @override
  Future<DTOCliente> salvar(DTOCliente dto) async {
    _db = await Conexao.abrir();
    int id = await _db.rawInsert(
        '''INSERT INTO cliente (nome, cpf, email) VALUES (?,?,?),''',
        [dto.nome, dto.CPF, dto.email]);
    dto.id = id;
    return dto;
  }
}
