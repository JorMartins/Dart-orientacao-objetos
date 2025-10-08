
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

  print("");
  print("");

  for (Conta conta in contas){
    print("TITULAR: ${conta.titular}   /  SALDO: ${conta.saldo}");
  }

  contaMatheus.receber(500);

  print("");

  for (Conta conta in contas){
    print("TITULAR: ${conta.titular}   /  SALDO: ${conta.saldo}");
  }

  contaMatheus.enviar(200);

  print("");

  for (Conta conta in contas){
    print("TITULAR: ${conta.titular}   /  SALDO: ${conta.saldo}");
  }
}



class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
  
  void receber(double valor) {
    saldo += valor;
  }
  
  void enviar(double valor) {
    saldo -= valor;
  }
}
