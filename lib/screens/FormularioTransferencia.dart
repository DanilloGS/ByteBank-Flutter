import 'package:byte_bank/components/editor.dart';
import 'package:byte_bank/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Formulario de Transferências')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                  controlador: _controladorConta,
                  rotulo: 'Número da Conta',
                  dica: '0000'),
              Editor(
                  controlador: _controladorValor,
                  rotulo: 'Valor',
                  dica: '0.00',
                  icone: Icons.monetization_on),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RaisedButton(
                  onPressed: () => _criaTransferencia(context),
                  child: Text('Confirmar'),
                ),
              )
            ],
          ),
        ));
  }

  void _criaTransferencia(context) {
    final int numeroConta = int.tryParse(_controladorConta.text);
    final double valor = double.tryParse(_controladorValor.text);
    if (numeroConta != null && valor != null) {
      final transfernciaCriada = Tranferencia(valor, numeroConta);
      Navigator.pop(context, transfernciaCriada);
    }
  }
}
