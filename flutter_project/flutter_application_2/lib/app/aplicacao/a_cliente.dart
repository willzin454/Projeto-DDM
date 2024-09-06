import 'package:flutter_application_2/dominio/inteface/i_dao_cliente.dart';
import 'package:flutter_application_2/dominio/cliente.dart';

class ACliente {
  Cliente cliente;
  DAOCliente dao;

  ACliente({required this.cliente, required this.dao}) {}

  salvar() {
    cliente.incluir();
  }
}
