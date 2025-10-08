import 'package:anybank/conta.dart';

void main() {
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000);
  ContaCorrente contaChris = ContaCorrente("Chris", 4000);
  ContaPoupanca contaDenise = ContaPoupanca("Denise", 4000);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  print(contaMatheus.titular);
  contaMatheus.imprimeSaldo();
  print("");

  print(contaRoberta.titular);
  contaRoberta.imprimeSaldo();
  print("");
  print("");
  print("");

  for (Conta conta in contas){
    conta.imprimeSaldo();
  }

  contaMatheus.receber(500);
  contaMatheus.enviar(200);

  print(".");

  contaChris.receber(50);
  contaDenise.receber(50);

}

