import 'dart:io';

import 'package:meu_app_imc/Pessoa.dart';
import 'package:meu_app_imc/functions/functions.dart';

void main() {
  print("Calculadora de IMC");

  // Solicite ao usuário os dados da pessoa
  String nome = lerString("Informe o nome: ");
  double peso = lerDouble("Informe o peso (em kg): ");
  double altura = lerDouble("Informe a altura (em metros): ");

  // Crie uma instância da classe Pessoa
  var pessoa = Pessoa(nome, peso, altura);

  // Calcule o IMC
  double imc = pessoa.peso / (pessoa.altura * pessoa.altura);

  // Exiba o resultado
  print("Nome: ${pessoa.nome}");
  print("Peso: ${pessoa.peso} kg");
  print("Altura: ${pessoa.altura} metros");
  print("IMC: $imc");
  print("Situação: ${interpretarIMC(imc)}");
}
