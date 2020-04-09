import 'package:byte_bank/components/itemTransferencia.dart';
import 'package:byte_bank/models/transferencia.dart';
import 'package:flutter/material.dart';

import 'FormularioTransferencia.dart';

class ListaTranferencias extends StatefulWidget {
  final List<Tranferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTranferenciasState();
  }
}

class ListaTranferenciasState extends State<ListaTranferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transferências')),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Tranferencia> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((transferenciaRecebida) {
            if (transferenciaRecebida != null)
              setState(() {
                widget._transferencias.add(transferenciaRecebida);
              });
          });
        },
      ),
    );
  }
}
