
void main() {
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  print(contaMatheus.titular);
  print(contaMatheus.saldo);
  print("");

  print(contaRoberta.titular);
  print(contaRoberta.saldo);
  print("");

  contaRoberta.saldo = 5000;

  print(contas[1].saldo);
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}
