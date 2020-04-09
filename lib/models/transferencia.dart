class Tranferencia {
  final double valor;
  final int numeroConta;

  Tranferencia(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Transferencia(Valor $valor, Número da conta: $numeroConta)';
  }
}
