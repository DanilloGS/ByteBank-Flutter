import 'package:byte_bank/models/transferencia.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {
  final Tranferencia _tranferencia;

  const ItemTransferencia(this._tranferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_tranferencia.valor.toString()),
        subtitle: Text(_tranferencia.numeroConta.toString()),
      ),
    );
  }
}
