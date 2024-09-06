import 'package:flutter_application_2/app/banco/sqlite/dao_cliente.dart';
import 'package:flutter_application_2/dominio/dto/dto_cliente.dart';
import 'package:flutter_application_2/dominio/inteface/i_dao_cliente.dart';
import 'package:flutter_application_2/dominio/cliente.dart';

class ACliente {
  Cliente cliente;
  DAOCliente dao = DAOCliente();

  ACliente({DTOCliente dto}) {
    cliente = Cliente(dto: dto, dao: dao);
  }

  salvar() {
    cliente.incluir();
  }
}
